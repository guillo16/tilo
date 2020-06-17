class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :set_category, only: [:show, :update]

  def index
    if current_user.admin?
      @categories = Category.all
    else
      redirect_to root_path
      flash[:notice] = "Accesso denegado!"
    end
  end

  def show
    @products = @category.products
    if params["created_at"]
      @products = @category.products.order(created_at: :desc)
    elsif params["brand"]
      @products = @category.products.where(brand: params["brand"])
    elsif params["condition"]
      @products = @category.products.where(condition: params["condition"])
    else
      @products
    end
    @categories = Category.all
  end

  def new
    if current_user.admin?
      @category = Category.new
    else
      redirect_to root_path
      flash[:notice] = "Accesso denegado!"
    end
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to category_path(@category)
    else
      render :new
    end
  end

  def edit
    if current_user.admin?
      @category = Category.find(params[:id])
    else
      redirect_to root_path
      flash[:notice] = "Accesso denegado!"
    end
  end

  def update
    @category.update(category_params)
    redirect_to category_path(@category)
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:title, :division_id)
  end
end


