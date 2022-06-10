class TicketsController < ApplicationController
  def show
    @event = Event.find(params[:event_id])
    @ticket = Ticket.find(params[:id])
    @tickets = @event.tickets
  end
end
