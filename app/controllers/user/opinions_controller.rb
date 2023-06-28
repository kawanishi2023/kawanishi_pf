class User::OpinionsController < ApplicationController
  before_action :authenticate_user!

  def new
    @opinion = Opinion.new
  end

  def create
    @opinion = Opinion.new(opinion_params)
    @opinion.user_id=current_user.id
    if @opinion.save
      flash[:notice] = "ご意見ありがとうございました"
      redirect_to root_path
    else
      flash[:notice] = "正しく入力してください"
      render :new
    end
  end


   private

   def opinion_params
    params.require(:opinion).permit(:opinion)
   end

end
