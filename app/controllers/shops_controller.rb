class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def show
    @info = Shop.find(params[:id])
    @review = Review.new
    @reviews = Review.where(shop_id: params[:id])
  end
end
