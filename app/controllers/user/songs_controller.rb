class User::SongsController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def new
    @song = Song.new
    @genre = Genre.all
  end

  def create
    @song = Song.new(song_params)
    @song.user = current_user
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song =  Song.find(params[:id])
    @genre = Genre.all
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
    @open_songs = @user.songs.where(is_opened: true)
    @close_songs = @user.songs.where(is_opened: false)
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to songs_path  
  end

  private

  def song_params
    params.require(:song).permit(:name, :genre_id, :artist, :tuning, :capo, :bpm, :tonic, :chord, :secret_word, :is_opened)
  end

end