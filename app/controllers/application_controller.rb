class ApplicationController < ActionController::Base

  include CurrentCart
  before_action :set_cart, only: [:show, :edit, :update, :destroy]
end
