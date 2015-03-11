class ItemsController < ApplicationController
   def index
      @artist = Artist.find(params[:artist_id])
      @items = @artist.items
   end


   def show
      @artist = Artist.find(params[:artist_id])
      @item = Item.find(params[:id])
      category_id1 = @item.category_id
      @category = Category.find(category_id1)
   end

  def like
      user = current_deviseuser
      item = Item.find(params[:id])
      like = item
      unless user.likes.include? like
      user.likes << like
      if user.save
        flash[:sucess] = "Liked!"
      else
        flash[:alert] = "Boo"
      end
      else
        flash[:sucess] = "Already Liked!"
      end
      redirect_to :back
   end

end
