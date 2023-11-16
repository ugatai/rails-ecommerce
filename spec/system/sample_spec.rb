require 'rails_helper'

RSpec.describe 'Sample', type: :system, js: true do
  let(:admin) { create(:valid_admin) }

  it 'opens a page' do
    visit root_path
    expect(page).to have_content('You will find what you are looking for.')
  end

  it 'opens a admin login page' do
    visit new_admin_session_path

    fill_in 'Email', with: admin.email
    fill_in 'Password', with: admin.password
    click_button 'Sign In'

    expect(page).to have_content('Signed in successfully.')
  end
end
