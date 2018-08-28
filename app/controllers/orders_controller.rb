class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @orde = Order.new
  end

  def show
    @order = Order.new(params[:order])
  end

  def edit
    @order = Order.find(params[:id])
  end

  def save
    @order = Order.new(params[:order])
    if @order.save
      redirect_to orders_url, notice: "Order successfully created."
    else
      render :new
    end
  end

  def destroy
    @order = Order.find(params[:id])
    if @order.destroy
      redirect_to orders_url, notice: "Order successfully deleted."
    else
      redirect_to orders_url, notice: "Not possible to destroy the Order."
    end
  end
end
