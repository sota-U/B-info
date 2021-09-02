class LikesController < ApplicationController
  before_action :tweet_params
  
  def create
    like = current_user.likes.new(tweet_id: @tweet.id)
    like.save
  end

  def show
    @likes = Like.all
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, tweet_id: @tweet.id).destroy
  end

  private
  def tweet_params
    @tweet = Tweet.find(params[:tweet_id])
  end
end