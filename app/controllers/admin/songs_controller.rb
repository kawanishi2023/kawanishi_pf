class Admin::SongsController < ApplicationController
  before_action :authenticate_admin!
  
  def index
    @song = Song.page(params[:page])
  end
  
  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to admin_songs_path
  end
  
end
