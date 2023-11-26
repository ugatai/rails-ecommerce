# == Schema Information
#
# Table name: order_details
#
#  id         :bigint           not null, primary key
#  price      :integer          not null
#  quantity   :integer          not null
#  order_id   :bigint           not null
#  product_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe OrderDetail, type: :model do
  # @type [Customer]
  let(:customer) { create(:valid_customer) }
  # @type [Order]
  let(:order) { create(:valid_order, customer_id: customer.id) }
  # @type [Product]
  let(:product) { create(:valid_product) }

  it 'has a valid factory' do
    expect(FactoryBot.build(:valid_order_detail, order_id: order.id, product_id: product.id)).to be_valid
  end
  it 'has a invalid factory' do
    expect(FactoryBot.build(:invalid_order_detail)).to be_invalid
  end

  describe 'associations' do
    it { should belong_to(:order) }
    it { should belong_to(:product) }
  end
end
