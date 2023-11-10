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
class CartItem < ApplicationRecord
  belongs_to :customer
  belongs_to :product
end
