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
FactoryBot.define do
  factory :valid_order, class: 'Order' do
    name { 'name_1' }
    postal_code { 'postal_code' }
    prefecture { 'prefecture' }
    address1 { 'address1' }
    address2 { nil }
    postage { 100 }
    billing_amount { 1000 }
  end

  factory :invalid_order, class: 'Order' do
    name { 'name_1' }
    postal_code { 'postal_code' }
    prefecture { 'prefecture' }
    address1 { nil }
    address2 { nil }
    postage { 100 }
    billing_amount { 1000 }
  end
end
