class ItemsController < ApplicationController
   def index
      @artist = Artist.find(params[:artist_id])
      @items = @artist.items
   end

   
   def show 
      @item = Item.find(params[:id])
   end


   def bid

   end


end
