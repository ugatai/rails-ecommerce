FactoryBot.define do
  factory :valid_admin, class: 'Admin' do
    email { 'admin@admin.admin' }
    password { 'password' }
  end
end

FactoryBot.define do
  factory :invalid_admin, class: 'Admin' do
    email { nil }
    password { 'password' }
  end
end