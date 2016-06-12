class ShopsController < ApplicationController
  def index
    @shops = Shop.all
    # binding.pry
  end

  def show
    @info = Shop.find(params[:id])
  end
end
