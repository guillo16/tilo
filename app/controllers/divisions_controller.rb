class DivisionsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :set_division, only: [:show, :update]

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
    if current_user.admin?
      @division = Division.friendly.find(params[:id])
    else
      redirect_to root_path
      flash[:notice] = "Accesso denegado!"
    end
  end

  def update
    @division.update(division_params)
    redirect_to division_path(@division)
  end

  private

  def set_division
    @division = Division.friendly.find(params[:id])
  end

  def division_params
    params.require(:division).permit(:title, :photo)
  end
end
