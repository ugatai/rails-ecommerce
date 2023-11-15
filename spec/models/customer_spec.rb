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
  # ファクトリーの作成
  it 'has a valid factory' do
    expect(FactoryBot.build(:valid_customer)).to be_valid
  end
  it 'has a invalid factory' do
    expect(FactoryBot.build(:invalid_customer)).to be_invalid
  end

  # モデル属性値バリデーション
  it { is_expected.to validate_presence_of :email }
  it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  it { is_expected.to validate_presence_of :password }
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :status }

  # モデル内定義のメソッドテスト
end
