require 'rails_helper'

RSpec.describe 'Customer::CartItems', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/customer/cart_items/index'
      expect(response).to have_http_status(:success)
    end
  end
end
