# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  price       :integer
#  stock       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'rails_helper'

RSpec.describe Product, type: :model do
  # ファクトリーの作成
  it 'has a valid factory' do
    expect(FactoryBot.build(:valid_product)).to be_valid
  end
  it 'has a invalid factory' do
    expect(FactoryBot.build(:invalid_product)).to be_invalid
  end

  # モデル内のリレーション定義
  describe 'associations' do
    it { should have_one_attached(:image) }
    it { should have_many(:cart_items).dependent(:destroy) }
    it { should have_many(:order_details).dependent(:destroy) }
  end

  # モデル属性値バリデーション

  # モデル内定義のメソッドテスト
end
