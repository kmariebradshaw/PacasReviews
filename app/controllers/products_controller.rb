class ProductsController < ApplicationController
  def new 
    @product = Product.new
  end 
  def create
    @product = Product.new(product_params)
    if @product. save
      redirect_to '/products'
    else
      render 'new'
    end 
  end 
  def show
    @product = Product.find(params[:id]) 
  end 
  def index
    @products = Product.all 
    @product = Product.new
  end 
  def update
    @product = Product.find(params[:id]) 
  end 
  private 
  def product_params
      params.require(:product).permit(:title, :size, :color)
  end 
end
