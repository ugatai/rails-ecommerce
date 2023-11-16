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
  it 'has a valid factory' do
    expect(FactoryBot.build(:valid_product)).to be_valid
  end
  it 'has a invalid factory' do
    expect(FactoryBot.build(:invalid_product)).to be_invalid
  end

  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :description }
  it { is_expected.to validate_presence_of :price }
  it { is_expected.to validate_presence_of :stock }
  it { is_expected.to validate_presence_of :image }

  describe 'associations' do
    it { should have_one_attached(:image) }
    it { should have_many(:cart_items).dependent(:destroy) }
    it { should have_many(:order_details).dependent(:destroy) }
  end

  describe 'scopes' do
    let!(:product1) { FactoryBot.create(:valid_product, name: 'product1', price: 100) }
    let!(:product2) { FactoryBot.create(:valid_product, name: 'product2', price: 50) }
    let!(:product3) { FactoryBot.create(:valid_product, name: 'product3', price: 80) }

    # describe ".price_high_to_low" do
    #   it "returns products ordered by price in descending order" do
    #     products = Product.price_high_to_low
    #     expect(products).to eq([product1, product3, product2])
    #   end
    # end
    #
    # describe ".price_low_to_high" do
    #   it "returns products ordered by price in ascending order" do
    #     products = Product.price_low_to_high
    #     expect(products).to eq([product2, product3, product1])
    #   end
    # end
  end
end
