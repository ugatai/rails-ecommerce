class Customer::OrdersController < ApplicationController
  before_action :authenticate_customer!

  def index
    @orders = current_customer.orders.latest
  end

  def show
    @orders = current_customer.orders.find(params[:id])
  end

  def success; end
end
