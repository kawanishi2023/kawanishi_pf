class User::SongsController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def new
    @song = Song.new
    @genre = Genre.all
  end

  def create
    @song = Song.new(song_params)
    @song.user = current_user
  if @song.save
    redirect_to song_path(@song)
  else
    flash[:notice] = "公開ステータス・曲名・アーティスト名・ジャンルは入力必須項目です。"
    @genre = Genre.all
    render :new
  end
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
    if user_signed_in?
      @song =  Song.find(params[:id])
    elsif admin_signed_in?
      @song =  Song.find(params[:id])
    else
      
      # 非ログイン時に非公開ステータス楽曲を除外する
      @song =  Song.find(params[:id])
      if @song.is_opened == true
        @song
      else
        flash[:notice] = "非公開楽曲です。"
        redirect_to root_path
      end  
      
    end
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