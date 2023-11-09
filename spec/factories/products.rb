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
FactoryBot.define do
  factory :valid_product, class: 'Product' do
    name { 'valid_product' }
    description { 'description/description/description' }
    price { 1000 }
    stock { 5 }
  end

  factory :invalid_product, class: 'Product' do
    name { 'invalid_product' }
    description { nil }
    price { 1000 }
    stock { 5 }
  end
end
