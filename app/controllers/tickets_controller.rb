class TicketsController < ApplicationController
  skip_before_action :authenticate_user!
  def show
    @ticket = Ticket.find(params[:id])
    @event = @ticket.event
    @tickets = @event.tickets.where.not(id: params[:id])
    @cart_item = CartItem.new
    @cart_items = CartItem.all
    @cart = current_user.carts.last
  end
end
