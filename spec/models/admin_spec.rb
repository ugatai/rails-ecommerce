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
require 'rails_helper'

RSpec.describe Admin, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:valid_admin)).to be_valid
  end
  it 'has a invalid factory' do
    expect(FactoryBot.build(:invalid_admin)).to be_invalid
  end

  it { is_expected.to validate_presence_of :email }
  it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  it { is_expected.to validate_presence_of :password }
end
