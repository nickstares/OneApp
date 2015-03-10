class ChargesController < ApplicationController
def new
@item = Item.find(params[:item_id])
@amount = @item.price * 100
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

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to root_path
end
end
