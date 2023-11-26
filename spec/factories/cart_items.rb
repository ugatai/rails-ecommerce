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
  # テストコードでは customer_id, product_id 上書き
  factory :valid_cart_item, class: 'CartItem' do
    quantity { 5 }
    customer_id { 1 }
    product_id { 1 }
  end

  factory :invalid_cart_item, class: 'CartItem' do
    quantity { 5 }
    customer_id { 999 }
    product_id { 999 }
  end
end
