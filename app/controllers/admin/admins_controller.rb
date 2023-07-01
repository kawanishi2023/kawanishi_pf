class Admin::AdminsController < ApplicationController
  before_action :authenticate_admin!
  
  def index
    @user = User.page(params[:page])
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
    params.require(:user).permit(:is_deleted, :name, :email)
  end  
  
  
  
end
