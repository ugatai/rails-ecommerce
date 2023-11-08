# == Schema Information
#
# Table name: customers
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  name                   :string           not null
#  status                 :integer          default("normal"), not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
FactoryBot.define do
  factory :valid_customer, class: 'Customer' do
    email { 'customer@customer.customer' }
    password { 'password' }
    name { 'customer' }
    status { 'normal' }
  end
end

FactoryBot.define do
  factory :invalid_customer, class: 'Customer' do
    email { nil }
    password { 'password' }
    name { 'customer' }
    status { 'normal' }
  end
end
