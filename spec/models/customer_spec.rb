require 'rails_helper'

RSpec.describe Customer, type: :model do
  context "必須パラメータが入力されている場合" do
    it "保存処理ができる" do
      customer = create(:valid_customer)
      expect(customer).to be_valid
    end
  end
  context "必須パラメータにnilがある場合" do
    it "保存処理ができない" do
      customer = build(:invalid_customer)
      expect(customer).to_not be_valid
    end
  end
end
