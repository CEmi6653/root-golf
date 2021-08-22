class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def create
    if review = Review.create(review_params)
      redirect_to tweet_path(review.tweet.id)
    else
      render "tweets/show"
    end
  end
  def destroy
    @tweet = Tweet.find(params[:tweet_id])
    review = @tweet.reviews.find(params[:id])
    if review.destroy
      redirect_to tweet_path(review.tweet.id)
    else
      render "tweet/show"
    end
  end

  private
  def review_params
    params.require(:review).permit(:content, :rate).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
  end
end
