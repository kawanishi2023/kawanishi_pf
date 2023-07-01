class Admin::OpinionsController < ApplicationController
  before_action :authenticate_admin!
  
  def index
    @opinion = Opinion.page(params[:page]).order(created_at: :desc)
  end
  
  def destroy
    @opinion = Opinion.find(params[:id])
    @opinion.destroy
    redirect_to admin_opinions_path
  end
  
end
