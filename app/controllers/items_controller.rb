class ItemsController < ApplicationController
   def index
      @artist = Artist.find(params[:artist_id])
      @items = @artist.items
   end


   def show
      @item = Item.find(params[:id])
   end

    def like
      user = current_deviseuser
      item = Item.find(params[:id])
      like = item
      user.likes << like
      if user.save
        flash[:sucess] = "Liked!"
      else
        flash[:alert] = "Boo"
      end
      redirect_to :back
    end


   def bid

   end


end
