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

end
