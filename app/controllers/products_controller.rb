class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update, :destroy]

  def create
    puts params
    @product = Product.new(product_params)
    puts @product
    if @product.save
      puts @product
      redirect_to products_path, notice: 'Wowzers you just made a product'
    else
      render :new
    end

  end

  def show


  end

  def update
    if @product.update(product_params)
     redirect_to products_path, notice: 'You just changed your product'
    else

    end
  end

  def edit


  end

  def destroy
    @product.destroy

    redirect_to products_path, notice: 'You just deleted a product'
  end

  def new
    @products = Product.new

  end

  def index
    @products = Product.all
  end

  private

  def find_product
    @product = Product.find(params[:id])

  end

  def product_params
    params.require(:product).permit(:name,:description,:price)

  end

end
