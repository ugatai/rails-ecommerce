require 'rails_helper'

RSpec.describe 'Admin::Products', type: :request do
  # @type [Admin]
  let(:admin) { create(:valid_admin) }
  # @type [Product]
  let(:product) { create(:valid_product) }

  before do
    sign_in admin
  end

  describe 'GET /index' do
    it 'returns http success' do
      get admin_products_path
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get admin_product_path(product.id)
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get new_admin_product_path
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST /create' do
    it 'creates a new product' do
      expect do
        post admin_products_path, params: { product: attributes_for(:valid_product) }
      end.to change(Product, :count).by(1)

      expect(response).to have_http_status(:redirect)
      follow_redirect!

      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /edit' do
    it 'returns http success' do
      get edit_admin_product_path(product.id)
      expect(response).to have_http_status(:success)
    end
  end

  describe 'PATCH /update' do
    it 'updates a product' do
      patch admin_product_path(product), params: { product: { name: 'New Name' } }

      expect(response).to have_http_status(:redirect)
      follow_redirect!

      expect(response).to have_http_status(:success)

      # Reload the product from the database to get the updated attributes
      product.reload
      expect(product.name).to eq('New Name')
    end

    it 'renders edit template on failure' do
      # Assuming there's a validation that prevents the update, for example, if name is required
      patch admin_product_path(product), params: { product: { name: '' } }

      expect(response).to have_http_status(:success)
    end
  end
end
