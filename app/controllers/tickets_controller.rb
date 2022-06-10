class TicketsController < ApplicationController
  skip_before_action :authenticate_user!
  def show
    @event = Event.find(params[:event_id])
    @ticket = Ticket.find(params[:id])
    @tickets = @event.tickets
  end
end
