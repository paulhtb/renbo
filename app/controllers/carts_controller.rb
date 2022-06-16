class CartsController < ApplicationController
  after_action :destroy_cart
  def show
    @cart = current_user.carts.last

    # HANDLE THIS SOMEHOW

    unless @cart.cart_items.empty?
      @transaction = Transaction.create!(cart_id: @cart.id, amount: @cart.total_price, status: 'pending')

      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          images: [helpers.asset_url("renbologo.png")],
          name: "Total price:",
          amount: @cart.amount_cents,
          currency: 'usd',
          quantity: 1
        }],
        success_url: user_collection_url(current_user),
        cancel_url: cart_url
      )

      @transaction.update(checkout_session_id: session.id)
    end
  end

  private

  def destroy_cart
       # if @cart.payment
    #   @cart.payment.destroy
    # end

  end

end
