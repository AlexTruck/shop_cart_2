class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :cart_data

  def cart_data
    @cart_count = 0
    @cart_sum = 0
  end

end
