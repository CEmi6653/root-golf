class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def create
    tweet = Tweet.find(params[:tweet_id])
    @review = tweet.reviews.build(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_back(fallback_location: root_path)
    else
      flash[:success] = "コメントできませんでした"
      redirect_back(fallback_location: root_path)
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
    params.require(:review).permit(:content, :rate)
  end
end
