class StripeCheckoutSessionService
  def call(event)
    transaction = Transaction.find_by(checkout_session_id: event.data.object.id)
    user = transaction.cart.user
    cart = transaction.cart
    transaction.update(status: 'paid')
    transaction.cart.tokens.update(status: "owned", user: user)
    cart.paid
    user.new_cart
  end
end
