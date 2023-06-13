class Admin::AdminsController < ApplicationController
  def index
    @user = User.all
  end
  
  def edit
    @user =  User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(is_deleted_params)
    redirect_to admins_path  
  end

  private
  
  def is_deleted_params
    params.require(:user).permit(:is_deleted)
  end  
  
  
  
end
