class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product has been deleted"
    redirect_to products_path
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def update
    binding.pry
    @product= Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product has been updated"
      redirect_to products_path
    else
      render :edit
    end
  end

  private

  def product_params
    params.require(:product).permit(:country, :cost, :name)
  end
end
