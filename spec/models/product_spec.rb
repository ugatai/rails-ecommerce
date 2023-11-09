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
  context '必須パラメータが入力されている場合' do
    it '保存処理ができる' do
      product = create(:valid_product)
      expect(product).to be_valid
    end
  end
  context '必須パラメータにnilがある場合' do
    it '保存処理ができない' do
      product = build(:invalid_product)
      expect(product).to_not be_valid
    end
  end
end
