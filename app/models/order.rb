# == Schema Information
#
# Table name: orders
#
#  id             :bigint           not null, primary key
#  name           :string           not null
#  postal_code    :string           not null
#  prefecture     :string           not null
#  address1       :string           not null
#  address2       :string
#  postage        :integer          not null
#  billing_amount :integer          not null
#  status         :integer          default("waiting_payment"), not null
#  customer_id    :bigint           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_details, dependent: :destroy

  enum status: {
    waiting_payment: 0,
    confirm_payment: 1,
    shipped: 2,
    out_of_delivery: 3,
    delivered: 4
  }

  scope :waiting_payment, -> { where(status: 'waiting_payment') }
  scope :confirm_payment, -> { where(status: 'confirm_payment') }
  scope :shipped, -> { where(status: 'shipped') }
  scope :out_of_delivery, -> { where(status: 'out_of_delivery') }
  scope :delivered, -> { where(status: 'delivered') }
  scope :created_today, -> { where('orders.created_at >= ?', Time.zone.now.beginning_of_day) }
end
