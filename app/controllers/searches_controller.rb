class SearchesController < ApplicationController
  
  def search
      @songs = Song.looks(params[:word]).where(is_opened: true)
  end
  
end
