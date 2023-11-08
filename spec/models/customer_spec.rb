# == Schema Information
#
# Table name: customers
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  name                   :string           not null
#  status                 :integer          default("normal"), not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
require 'rails_helper'

RSpec.describe Customer, type: :model do
  context '必須パラメータが入力されている場合' do
    it '保存処理ができる' do
      customer = create(:valid_customer)
      expect(customer).to be_valid
    end
  end
  context '必須パラメータにnilがある場合' do
    it '保存処理ができない' do
      customer = build(:invalid_customer)
      expect(customer).to_not be_valid
    end
  end
end
