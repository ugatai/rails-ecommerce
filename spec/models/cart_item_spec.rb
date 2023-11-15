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
  # ファクトリーの作成
  it 'has a valid factory' do
    expect(FactoryBot.build(:valid_cart_item)).to be_valid
  end
  it 'has a invalid factory' do
    expect(FactoryBot.build(:invalid_cart_item)).to be_invalid
  end

  # モデル内のリレーション定義
  describe 'associations' do
    it { should belong_to(:customer) }
    it { should belong_to(:product) }
  end

  # モデル属性値バリデーション

  # モデル内定義のメソッドテスト
  it 'returns calc line total price' do
    # @type [Product]
    product = FactoryBot.create(:valid_product)
    # @type [CartItem]
    cart_item = FactoryBot.build(:valid_cart_item, quantity: 5, product_id: product.id)
    expect(cart_item.line_total).to eq 5000
  end
end
