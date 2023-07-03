class User::SearchesController < ApplicationController
  
  before_action :authenticate_user!

  def search
    @range = params[:range]
    @song = current_user.songs

    if @range == "曲名"
      @songs = @song.song_looks(params[:search], params[:retrieval])
    else
      @songs = @song.artist_looks(params[:search], params[:retrieval])
    end
  end
  
end
