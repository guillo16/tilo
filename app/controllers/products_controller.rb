class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_products, only: [:show, :update, :destroy]

  def index
    @products = Product.all
    if params["flavor"]
      @products = Product.where(flavor: params["flavor"])
    else
      @products
    end
  end

  def show
  end

  def new
    if current_user.admin?
      @product = Product.new
    else
      redirect_to root_path
      flash[:notice] = "Accesso denegado!"
    end
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def edit
    if current_user.admin?
      @product = Product.find(params[:id])
    else
      redirect_to root_path
      flash[:notice] = "Accesso denegado!"
    end
  end

  def update
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private

  def set_products
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title, :description, :stock, :flavor, :category_id, photos: [])
  end
end
