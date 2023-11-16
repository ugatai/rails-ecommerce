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
  it 'has a valid factory' do
    FactoryBot.create(:valid_order) if Order.maximum(:id).nil?
    FactoryBot.create(:valid_product) if Product.maximum(:id).nil?
    expect(FactoryBot.build(:valid_order_detail)).to be_valid
  end
  it 'has a invalid factory' do
    expect(FactoryBot.build(:invalid_order_detail)).to be_invalid
  end

  describe 'associations' do
    it { should belong_to(:order) }
    it { should belong_to(:product) }
  end
end
