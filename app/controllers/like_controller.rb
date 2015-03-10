class LikeController < ApplicationController
  def index
    @user = current_deviseuser
    @likes = @user.likes

  end
  def destroy
    user = current_deviseuser
    likes = user.likes
    likes.delete(params[:like_id])
    redirect_to :back
  end
end
