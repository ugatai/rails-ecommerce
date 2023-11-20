require 'rails_helper'

RSpec.describe 'Customer::Orders', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/customer/orders/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/customer/orders/show'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /success' do
    it 'returns http success' do
      get '/customer/orders/success'
      expect(response).to have_http_status(:success)
    end
  end
end
