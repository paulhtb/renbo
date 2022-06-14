class EventsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    if params['q'].present?
      @events = Event.extended_search(params['q'])
    else
      @events = Event.all
    end

    @events = @events.category_search(params['category']) if params['category'].present?
    @events = @events.genre_search(params['genre']) if params['genre'].present?
    @events = @events.city_search(params['city']) if params['city'].present?
  end

  def show
    @event = Event.find(params[:id])
    # Putting all the tokens of all tickets into an array
    @tokens = @event.all_tokens
    @markers = [{
          lat: @event.latitude,
          lng: @event.longitude,
          # info_window: render_to_string(partial: "info_window", locals: { event: @event })
    }]
  end
end
