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
  # @type [Customer]
  let(:customer) { create(:valid_customer) }
  # @type [Product]
  let(:product) { create(:valid_product) }

  it 'has a valid factory' do
    expect(FactoryBot.build(:valid_cart_item, customer_id: customer.id, product_id: product.id)).to be_valid
  end
  it 'has a invalid factory' do
    expect(FactoryBot.build(:invalid_cart_item)).to be_invalid
  end

  describe 'associations' do
    it { should belong_to(:customer) }
    it { should belong_to(:product) }
  end

  it 'returns calc line total price' do
    # @type [CartItem]
    cart_item = FactoryBot.build(:valid_cart_item, customer_id: customer.id, product_id: product.id)
    expect(cart_item.line_total).to eq 5000
  end
end
