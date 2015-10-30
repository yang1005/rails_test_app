class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @products = Product.all
    @product = Product.create(product_params)
  end

  def edit
  end

  def update
    @products = Product.all
    @product.update_attributes(product_params)
  end

  def delete
    @product = Product.find(params[:product_id])
  end

  def destroy
    @products = Product.all
    @product.destroy
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price)
  end
end
