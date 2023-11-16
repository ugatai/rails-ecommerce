require 'rails_helper'

RSpec.describe 'Customer::CartItems', type: :request do
  # @type [Customer]
  let(:customer) { create(:valid_customer) }
  # @type [Product]
  let(:product) { create(:valid_product) }
  # @type [CartItem]
  let(:cart_item) { create(:valid_cart_item, customer_id: customer.id, product_id: product.id) }
  # @type [Hash]
  let(:cart_item_attributes) { attributes_for(:valid_cart_item, customer_id: customer.id, product_id: product.id) }

  before do
    sign_in customer
  end

  describe 'GET /index' do
    it 'returns http success' do
      get cart_items_path
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST /create' do
    it 'creates a new cart item' do
      expect do
        post cart_items_path, params: { cart_item: cart_item_attributes }
      end.to change(CartItem, :count).by(1)

      expect(response).to have_http_status(:redirect)
      follow_redirect!

      expect(response).to have_http_status(:success)
    end
  end

  # describe 'DELETE /destroy' do
  #   it 'deletes a cart item' do
  #     expect do
  #       delete cart_item_path(cart_item.id)
  #     end.to change(CartItem, :count).by(-1)
  #
  #     expect(response).to have_http_status(:redirect)
  #     follow_redirect!
  #
  #     expect(response).to have_http_status(:success)
  #   end
  # end
end
