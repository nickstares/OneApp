class ChargesController < ApplicationController

  def new
  @item = Item.find(params[:item_id])
  end

  def create
    # Amount in cents
    @amount = 2100
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
              item.user_id = current_deviseuser[:id]
              item.reservation_time = nil
              item.save
           end
        end
    purchased
    end
    redirect_to :purchased
  end


  def purchased
      @Purchaseditems = []
      user = Deviseuser.find(current_deviseuser[:id])
      purchaseditems = user.items
      purchaseditems.each do |item|
         unless item.purchased_date.nil?
             @Purchaseditems << item
         end
      end

  end



  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to root_path

end
