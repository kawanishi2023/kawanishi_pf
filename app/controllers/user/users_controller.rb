class User::UsersController < ApplicationController
  before_action :authenticate_user!
  
  
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

  def withdrawal
    @user= User.find(params[:id])
    @user.update(is_deleted: true)
    reset_session
    # flash[:notice] = "退会処理を実行いたしました"
    redirect_to root_path
  end


  def user_params
    params.require(:user).permit(:name, :email)
  end

end