require 'rails_helper'

RSpec.describe SystemModule, type: :system do
  let(:admin) { create(:admin) }
  let(:customer) { create(:customer) }

  before do
    allow(self).to receive(:visit)
    allow(self).to receive(:fill_in)
    allow(self).to receive(:click_button)
  end

  it '管理者としてのログイン動作' do
    login_as(admin)

    expect(self).to have_received(:visit).with(new_admin_session_path)
    expect(self).to have_received(:fill_in).with('Email', with: admin.email)
    expect(self).to have_received(:fill_in).with('Password', with: admin.password)
    expect(self).to have_received(:click_button).with('Sign In')
  end

  it '顧客としてのログイン動作' do
    login_as(customer)

    expect(self).to have_received(:visit).with(new_customer_session_path)
    expect(self).to have_received(:fill_in).with('Email', with: customer.email)
    expect(self).to have_received(:fill_in).with('Password', with: customer.password)
    expect(self).to have_received(:click_button).with('Sign In')
  end
end
