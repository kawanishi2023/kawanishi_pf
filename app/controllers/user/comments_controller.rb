class User::CommentsController < ApplicationController
  
  def create
    @song = Song.find(params[:song_id])
    @comment = current_user.comments.new(comment_params)
    @comment.song_id = @song.id
    @comment.save
    redirect_to song_path(@song)
  end
  
  def destroy
    Comment.find(params[:id]).destroy
    redirect_to song_path(params[:song_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :name)
  end

end
