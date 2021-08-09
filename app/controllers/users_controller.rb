class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :check, :destroy]
  before_action :set_user, only: [:show, :edit, :update, :check, :destroy]
  before_action :user_check, only: [:edit, :update, :check, :destroy]
  def show
    @tweets = @user.tweets.order(created_at: :DESC)
  end

  def edit

  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end

  def check
    render :check
  end

  def destroy
    @user.destroy
    redirect_to root_path
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:nickname, :profile, :birthday)
  end

  def user_check
    redirect_to root_path unless @user.id == current_user.id 
  end
end
