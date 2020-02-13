class ReservesController < ApplicationController

  def index
    @product = Product.find(params[:product_id])
  end

  def new
    @product = Product.find(params[:product_id])
  end

  def create
  end

  def confirmation
    @product = Product.find(params[:product_id])
  end

end
