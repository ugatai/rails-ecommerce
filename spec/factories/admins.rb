# == Schema Information
#
# Table name: admins
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
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
