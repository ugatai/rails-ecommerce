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
FactoryBot.define do
  factory :valid_cart_item, class: 'CartItem' do
    quantity { 1 }
    customer_id { Customer.maximum(:id) }
    product_id { Product.maximum(:id) }
  end

  factory :invalid_cart_item, class: 'CartItem' do
    quantity { 1 }
    customer_id { 999 }
    product_id { 999 }
  end
end
