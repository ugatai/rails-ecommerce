require 'rails_helper'

RSpec.describe 'Customer::Products', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/customer/products/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/customer/products/show'
      expect(response).to have_http_status(:success)
    end
  end
end
