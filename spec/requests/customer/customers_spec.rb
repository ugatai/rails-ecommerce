require 'rails_helper'

RSpec.describe 'Customer::Customers', type: :request do
  describe 'GET /confirm_withdraw' do
    it 'returns http success' do
      get '/customer/customers/confirm_withdraw'
      expect(response).to have_http_status(:success)
    end
  end
end
