class ResetShoppingCartWorker
   include Sidekiq::Worker


      def perform(item_id)
         @item = Item.find(item_id)
         if @item.purchased_date.nil?
            @item.user_id = nil
            @item.reservation_time = nil
            @item.save
            puts "Camilo, this is really really working"
            puts "Item went back to market"
         else
            puts "Item already purchased"
         end
      end



end