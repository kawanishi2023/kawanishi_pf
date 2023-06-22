class Admin::GenresController < ApplicationController
  before_action :authenticate_admin!

  def index
    @genres = Genre.all
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    
  if @genre.save
    redirect_to genres_path
  else
    flash[:notice] = "正しく入力してください。"
    @genres = Genre.all
    @genre = Genre.new
    render :index
  end
  end
    
  

  def destroy
  end
  
  def edit
    @genre = Genre.find(params[:id])
  end
  
  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    redirect_to genres_path
  end
  

  private
  
  def genre_params
    params.require(:genre).permit(:name)
  end
  
end
