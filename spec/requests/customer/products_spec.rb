require 'rails_helper'

RSpec.describe 'Customer::Products', type: :request do
  # @type [Customer]
  let(:customer) { create(:valid_customer) }
  # @type [Product]
  let(:product) { create(:valid_product) }

  before do
    sign_in customer
  end

  describe 'GET /index' do
    it 'returns http success' do
      get products_path
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get product_path(product.id)
      expect(response).to have_http_status(:success)
    end
  end
end
