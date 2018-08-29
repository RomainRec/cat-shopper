class CartsController < ApplicationController
  def index
    @carts = Cart.all
  end

  def new
    @cart = Cart.new
  end

  def show
    @cart = Cart.find(params[:cart])
  end

  def edit
    @cart = Cart.find(params[:id])
  end

  def save
    @cart = Cart.new(params[:cart])
    if @cart.save
      redirect_to carts_url, notice: "Cart successfully created."
    else
      render :new
    end
  end

  def destroy
    @cart = Cart.find(params[:id])
    if @item.destroy
      redirect_to carts_url, notice: "Cart successfully deleted."
    else
      redirect_to carts_url, notice: "Not possible to destroy the Cart."
    end
  end
end
