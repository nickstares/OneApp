class ResetShoppingCartWorker
   include Sidekiq::Worker
   
   def perform
      puts "Camilo, this is working"

      
   end

end