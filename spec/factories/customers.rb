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
