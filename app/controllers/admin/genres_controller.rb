class Admin::GenresController < ApplicationController
  before_action :authenticate_admin!

  def index
    @genres = Genre.all
  end

  def create
    @genre = Genre.new(genre_params)
    @genre.save
    render :index
  end

  def destroy
  end
  

  private
  
  def genre_params
    params.require(:genre).permit(:name)
  end
  
end
