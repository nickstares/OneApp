class ReservationsController < ApplicationController
   
   def addToReservation
      item = Item.find(params[:id])      
      if item.user_id.nil?
         item.user_id = current_deviseuser[:id]
         binding.pry
         item.reservation_time = Time.now 
         item.save
         ResetShoppingCartWorker.perform_in(10.seconds)
         redirect_to :back
      else
         flash[:notice] = "This Item is already reserved"
         redirect_to :back
      end
   end
end
