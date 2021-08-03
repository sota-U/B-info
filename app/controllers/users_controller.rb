class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update]
  before_action :set_user, only:[:show, :edit, :update]
  def show
    @tweets = @user.tweets.order(created_at: :DESC)
  end
  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      render  :edit
    end 
  end
 

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:nickname,:profile,:birthday).merge(id: params[:id])
  end
end
