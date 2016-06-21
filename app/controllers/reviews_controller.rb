class ReviewsController < ApplicationController
  def create
    # binding.pry
    unless params[:review][:text].empty? then
      Review.create(review_params)
    end

    @reviews = Review.where(shop_id: params[:id])
    redirect_to controller: :shops, action: :show, :id => params[:shop_id]
  end


  private
  def review_params
    params.require(:review).permit(:text).merge(shop_id: params[:shop_id])
  end
end
