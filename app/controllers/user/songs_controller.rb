class User::SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.user = current_user
    @song.save

    redirect_to song_path(@song)
  end

  def edit
    @song =  Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    redirect_to song_path(@song)  
  end

  def show

    @song =  Song.find(params[:id])
    @comment = Comment.new

  end

  def index
    
    @user = current_user
    @song = @user.songs
    
  end

  def destroy
  end

  private

  def song_params
    params.require(:song).permit(:name, :artist, :tuning, :capo, :bpm, :tonic, :chord, :secret_word, :is_opened)
  end

end