class ReservationsController < ApplicationController

   def addToReservation
      @item = Item.find(params[:id])
      if @item.user_id.nil?
         @item.user_id = current_deviseuser[:id]
         @item.reservation_time = Time.now
         @item.save
         ResetShoppingCartWorker.perform_in(2.minute, @item.id)
         index
         redirect_to :back
      else
         flash[:notice] = "This Item is already reserved"
         redirect_to :back
      end
   end


   def index
      @ReservedItems = []
      @items = Item.all
      @items.each do |item|
         if item.user_id == current_deviseuser[:id]
            @ReservedItems << item
         end
      end
   end
end
