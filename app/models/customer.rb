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
class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :name
    validates :status
  end

  enum status: {
    normal: 0,
    withdrawn: 1,
    banned: 2
  }
end
