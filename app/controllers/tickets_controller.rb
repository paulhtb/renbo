class TicketsController < ApplicationController
  skip_before_action :authenticate_user!
  def show
    @ticket = Ticket.find(params[:id])
    @event = @ticket.event
    @tickets = @event.tickets.where.not(id: params[:id])
    @cart_item = CartItem.new
    @cart = current_user&.carts&.last
    @cart_items = @cart&.cart_items
    @tokens_available = Token.where(ticket_id: @ticket.id, status: "new")
    @tokens_available = @tokens_available.where.not(id: current_user.carts.last.cart_items.pluck(:token_id)) if user_signed_in?
  end
end
