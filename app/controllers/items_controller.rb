class ItemsController < ApplicationController
   def index
      @artist = Artist.find(params[:artist_id])
      items = @artist.items
      
      @ItemsToShow = []
         items.each do |item|
            if item.user_id == session[:user_id]
               @ItemsToShow << item
            elsif item.user_id == nil
               @ItemsToShow << item
            end   
         end

      # reservedByOtherUsers = []
      #    items.each do |item|
      #       unless item.reservation_time.nil?
      #           reservedByOtherUsers << item
      #       end 
      #    end
         
         @items = @ItemsToShow
         
   end

   








   def show 
      @item = Item.find(params[:id])

   end


   def bid

   end


end
