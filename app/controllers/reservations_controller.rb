class ReservationsController < ApplicationController

   def addToReservation
      @item = Item.find(params[:id])
      if @item.user_id.nil?
         @item.user_id = current_deviseuser[:id]
         @item.reservation_time = Time.now
         @item.save
         # ResetShoppingCartWorker.perform_in(40.minutes, @item.id)
         index
         redirect_to :back
      else
         flash[:notice] = "This Item is already reserved"
         redirect_to :back
      end
   end


   def index
      @ReservedItems = []
      user = Deviseuser.find(current_deviseuser[:id])
      purchaseditems = user.items
      purchaseditems.each do |item|
         unless item.reservation_time.nil?
             @ReservedItems << item       
         end
      end 
   end        
      
      
   def delete 
      item = Item.find(params[:id])
      item.reservation_time = nil
      item.user_id = nil
      item.save
      redirect_to :back
   end   
   
end
