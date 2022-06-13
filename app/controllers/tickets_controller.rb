class TicketsController < ApplicationController
  skip_before_action :authenticate_user!
  def show
    @ticket = Ticket.find(params[:id])
    @event = @ticket.event
    @tickets = @event.tickets
  end
end
