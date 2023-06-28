class Admin::OpinionsController < ApplicationController
  before_action :authenticate_admin!
  
  def index
    @opinion = Opinion.all
  end
end
