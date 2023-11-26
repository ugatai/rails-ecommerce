require 'rails_helper'

RSpec.describe 'Admin::Orders', type: :request do
  describe 'GET /show' do
    it 'returns http success' do
      get '/admin/orders/show'
      expect(response).to have_http_status(:success)
    end
  end
end
