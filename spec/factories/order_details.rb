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
FactoryBot.define do
  factory :valid_order_detail, class: 'OrderDetail' do
    price { 1000 }
    quantity { 5 }
    order_id { Order.maximum(:id) }
    product_id { Product.maximum(:id) }
  end
  factory :invalid_order_detail, class: 'OrderDetail' do
    price { nil }
    quantity { 5 }
    order_id { Order.maximum(:id) }
    product_id { Product.maximum(:id) }
  end
end
