class User::SearchesController < ApplicationController
  
  before_action :authenticate_user!

  def search
    @range = params[:range]

    if @range == "曲名"
      @songs = Song.name.looks(params[:search], params[:word])
    else
      @songs = Song.artist.looks(params[:search], params[:word])
    end
  end
  
end
