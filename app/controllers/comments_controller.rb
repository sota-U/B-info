class CommentsController < ApplicationController

  def create
    @tweet = Tweet.find(params[:tweet_id])
    #投稿に紐づいたコメントを作成
    @comment = @tweet.comments.build(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    render :index
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    render :index
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
  end
  
end