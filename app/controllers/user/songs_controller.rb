class User::SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.user = current_user
    @song.save
    #byebug
    redirect_to song_path(@song)
  end

  def edit
  end

  def update
  end

  def show

    @song =  Song.find(params[:id])

  end

  def index
    
    @user = current_user
    @song = Song.all
    
  end

  def destroy
  end

  private

  def song_params
    params.require(:song).permit(:name, :artist, :tuning, :capo, :bpm, :tonic, :chord, :secret_word, :is_opened)
  end

end
