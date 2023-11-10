# == Schema Information
#
# Table name: order_details
#
#  id         :bigint           not null, primary key
#  price      :integer          not null
#  quantity   :integer          not null
#  order_id   :bigint           not null
#  product_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe OrderDetail, type: :model do
  context '必須パラメータが入力されている場合' do
    it '保存処理ができる' do
      order_detail = create(:valid_order_detail)
      expect(order_detail).to be_valid
    end
  end
  context '必須パラメータにnilがある場合' do
    it '保存処理ができない' do
      order_detail = build(:invalid_order_detail)
      expect(order_detail).to_not be_valid
    end
  end
end
