class DivisionsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :set_division, only: [:show, :edit, :update]

  def index
  end

  def show
  end

  def new
    @division = Division.new
  end

  def create
    @division = Division.new(division_params)
    if @division.save
      redirect_to division_path(@division)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @division.update(division_params)
    redirect_to division_path(@division)
  end

  private

  def set_division
    @division = Division.find(params[:id])
  end

  def division_params
    params.require(:division).permit(:title, :photo)
  end
end
