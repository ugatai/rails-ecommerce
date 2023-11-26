require 'rails_helper'

RSpec.describe 'Admin::Pages', type: :request do
  describe 'GET /home' do
    it 'returns http success' do
      get '/admin/pages/home'
      expect(response).to have_http_status(:success)
    end
  end
end
