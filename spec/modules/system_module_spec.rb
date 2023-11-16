require 'rails_helper'

RSpec.describe 'SystemModule', type: :system, js: true do
  let(:admin) { create(:valid_admin) }
  let(:customer) { create(:valid_customer) }

  it 'login as admin' do
    login_as(admin)
    expect(page).to have_content('Signed in successfully.')
  end

  it 'login as customer' do
    login_as(customer)
    expect(page).to have_content('Signed in successfully.')
  end
end
