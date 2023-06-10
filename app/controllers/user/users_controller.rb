class User::UsersController < ApplicationController
  def show
  end

  def edit
    @user =  current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to user_path(@user)
  end



  def user_params
    params.require(:user).permit(:name, :email)
  end

end