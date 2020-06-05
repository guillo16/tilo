class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_divisions

  def set_divisions
    @divisions = Division.all
  end
end
