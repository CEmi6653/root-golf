class FavoritesController < ApplicationController
  def create 
    user = current_user
    tweet = Tweet.find(params[:tweet_id])
    if Favorite.create(user_id: user.id, tweet_id: tweet.id)
      redirect_to tweet
    else
      redirect_to root_url
    end
  end


   def destroy
     user = current_user
     tweet = Tweet.find(params[:tweet_id])
     if favorite = Favorite.find_by(user_id: user.id, tweet_id: tweet.id)
      favorite.delete
      redirect_to tweet
     else
      redirect_to root_url
     end
   end
end
