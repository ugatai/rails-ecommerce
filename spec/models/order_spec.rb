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
  # ファクトリーの作成
  it 'has a valid factory' do
    expect(FactoryBot.build(:valid_order)).to be_valid
  end
  it 'has a invalid factory' do
    expect(FactoryBot.build(:invalid_order)).to be_invalid
  end

  # モデル属性値バリデーション

  # モデル内定義のメソッドテスト
end
