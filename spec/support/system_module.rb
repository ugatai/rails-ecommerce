module SystemModule
  # @param [Admin|Customer] user
  def login_as(user)
    case user
    when Admin
      visit new_admin_session_path
    when Customer
      visit new_customer_session_path
    else
      raise ArgumentError, "Invalid user class: #{user.class}"
    end

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign In'
  end
end

RSpec.configure do |config|
  config.include SystemModule
end
