require 'rails_helper'

RSpec.describe 'Admin::Customers', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/admin/customers/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/admin/customers/show'
      expect(response).to have_http_status(:success)
    end
  end
end
