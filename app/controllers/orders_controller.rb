class OrdersController < ApplicationController
  before_action :authenticate_user!
  def index
    @orders = Order.includes(:product).all
  end
  def show
    @order = Order.find(params[:id])
  end
  def new
    @order = Order.new
  end
  def create
    @order = Order.new(order_params)
  end
  def destroy
  end
end
