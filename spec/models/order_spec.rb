# == Schema Information
#
# Table name: orders
#
#  id             :bigint           not null, primary key
#  name           :string           not null
#  postal_code    :string           not null
#  prefecture     :string           not null
#  address1       :string           not null
#  address2       :string
#  postage        :integer          not null
#  billing_amount :integer          not null
#  status         :integer          default("waiting_payment"), not null
#  customer_id    :bigint           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require 'rails_helper'

RSpec.describe Order, type: :model do
  context '必須パラメータが入力されている場合' do
    it '保存処理ができる' do
      order = create(:valid_order)
      expect(order).to be_valid
    end
  end
  context '必須パラメータにnilがある場合' do
    it '保存処理ができない' do
      order = build(:invalid_order)
      expect(order).to_not be_valid
    end
  end
end
