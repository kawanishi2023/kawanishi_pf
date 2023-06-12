class SearchesController < ApplicationController
  
  def search
      @songs = Song.looks(params[:word])
  end
  
end
