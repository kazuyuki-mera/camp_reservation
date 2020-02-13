class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def reserve
  end

  def about
  end

  def contact
    @contact = Contact.new
  end
  
end
