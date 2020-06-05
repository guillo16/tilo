class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :set_category, only: [:show, :edit, :update]

  def show
  end

  def new
    @category = Category.new
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
