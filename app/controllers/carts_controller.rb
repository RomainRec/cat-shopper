class CartsController < ApplicationController
  def index
    @carts = Card.all
  end

  def new
    @card = Card.new
  end

  def show
    @card = Card.new(params[:id])
  end

  def edit
    @card = Card.find(params[:id])
  end

  def save
    @card = Card.new(params[:card])
    if @card.save
      redirect_to cards_url, notice: "Card successfully created."
    else
      render :new
    end
  end

  def destroy
    @card = Card.find(params[:id])
    if @item.destroy
      redirect_to cards_url, notice: "Card successfully deleted."
    else
      redirect_to cards_url, notice: "Not possible to destroy the Card."
    end
  end
end
