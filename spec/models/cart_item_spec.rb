# == Schema Information
#
# Table name: cart_items
#
#  id          :bigint           not null, primary key
#  quantity    :integer          default(1), not null
#  customer_id :bigint           not null
#  product_id  :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'rails_helper'

RSpec.describe CartItem, type: :model do
  context '外部キーが存在する場合' do
    it '保存処理ができる' do
      cart_item = create(:valid_cart_item)
      expect(cart_item).to be_valid
    end
  end
  context '外部キーが存在しない場合' do
    it '保存処理ができない' do
      cart_item = build(:invalid_cart_item)
      expect(cart_item).to_not be_valid
    end
  end
end
