class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %I[home search info]

  def home
    @products = Product.all
  end

  def search
  end
end
