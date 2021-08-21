class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def create
    if review = Review.create(review_params)
      redirect_to root_path
    else
      render :show
    end
  end

  private
  def review_params
    params.require(:review).permit(:content, :rate).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
  end
end
