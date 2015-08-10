class CartsController < ApplicationController
  def index
    render json: session[:cart_data]
  end

  def update
    session[:cart_data] ||= {}
    unit = session[:cart_data][params[:id]]
    if unit.nil?
      session[:cart_data][params[:id]] = {product: Admin::Product.find(params[:id]), count: 1 || params[:unit_count]}
    else
      params[:unit_count].nil? ? unit['count'] += 1 : unit['count'] = params[:unit_count]
    end
    render json: session[:cart_data]
  end

  def destroy
    session[:cart_data].delete(params[:id])
    render json: session[:cart_data]
  end
end
