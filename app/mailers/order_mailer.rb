class OrderMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.complete.subject
  #
  def complete(args)
    email = args[:email]
    @url = "#{root_url}orders"
    mail(to: email, subject: 'Your order has been completed')
  end
end
