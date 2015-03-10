class ReservationsController < ApplicationController

   def addToReservation
      item = Item.find(params[:id])
      if item.user_id.nil?
         item.user_id = current_deviseuser[:id]
         item.reservation_time = Time.now
         item.save
         redirect_to :back
      else
         flash[:notice] = "This Item is already reserved"
         redirect_to :back
      end
   end
end
