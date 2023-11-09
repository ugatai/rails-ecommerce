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
class Product < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :description
    validates :price
    validates :stock
  end
end
