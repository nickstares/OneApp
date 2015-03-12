class ItemsController < ApplicationController
  def index
    @artist = Artist.find(params[:artist_id])
    @items = @artist.items
  end

  def show
    user = current_deviseuser
    @artist = Artist.find(params[:artist_id])
    @item = Item.find(params[:id])
    category_id1 = @item.category_id
    @category = Category.find(category_id1)

      @exclusives = @artist.items[0..2]
  end

  def like
    user = current_deviseuser
    item = Item.find(params[:id])
    like = item
      unless user.likes.include? like
        user.likes << like
        if user.save
          flash[:sucess] = "Artwork Collected!"
        else
          flash[:alert] = "Boo"
        end
        else
          flash[:sucess] = "Already Collected!"
      end
      redirect_to :back
  end
end
