# Preview all emails at http://localhost:3000/rails/mailers/order
class OrderPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/order/complete
  def complete
    OrderMailer.complete
  end
end
