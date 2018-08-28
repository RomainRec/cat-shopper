class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def show
    @item = Item.new(params[:item])
  end

  def create
    @item = Item.new(params[:item])
    if @item.save
      redirect_to items_url, notice: "Item successfully created."
    else
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      redirect_to items_url, notice: "Item successfully deleted."
    else
      redirect_to items_url, notice: "Not possible to destroy the Item."
    end
  end
end
