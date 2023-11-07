require 'rails_helper'

RSpec.describe Admin, type: :model do
  context '必須パラメータが入力されている場合' do
    it "保存処理ができる" do
      admin = create(:valid_admin)
      expect(admin).to be_valid
    end
  end
  context '必須パラメータにnilがある場合' do
    it "保存処理ができない" do
      admin = build(:invalid_admin)
      expect(admin).to_not be_valid
    end
  end
end