class HomeController < ApplicationController
  def index
    @products = Admin::Product.all
  end
end
