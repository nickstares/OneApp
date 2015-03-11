class ChargesController < ApplicationController
@PurchasedItems = []
  def new
  @item = Item.find(params[:item_id])
  end

  def create
    # Amount in cents
    
    @item = Item.find(params[:item_id])
    @amount = @item.price * 100

    customer = Stripe::Customer.create(
      :email => 'example@stripe.com',
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )
  
  @status = charge.status
  if @status == "succeeded"
    
      @items = Item.all
      @items.each do |item|
         if item.user_id == current_deviseuser[:id]
            item.purchased_date = Time.now
            item.save
        @PurchasedItems << item
         end
      end
      binding.pry
    redirect_to purchased_path(:user_id => current_deviseuser[:id])
  end
  
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to root_path
  end
end
