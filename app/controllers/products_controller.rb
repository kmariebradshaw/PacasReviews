class ProductsController < ApplicationController
  def new 
    @product = Product.new
  end 
  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product
    else
      render 'new'
    end 
  end 
  def show
    @product = Product.find(params[:id]) 
  end 
  def index
    @products = Product.all 
  end 
  def update
    @product = Product.find(params[:id]) 
  end 
  private 
  def product_params
      params.require(:product).permit(:title)
  end 
end
