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
    email { 'customer-test1@customer.customer' }
    password { 'password' }
    name { 'customer-test1' }
    status { 'normal' }
  end
end

FactoryBot.define do
  factory :invalid_customer, class: 'Customer' do
    email { 'customer-test2@customer.customer' }
    password { 'password' }
    name { 'customer-test2' }
    status { nil }
  end
end
