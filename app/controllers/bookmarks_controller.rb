class BookmarksController < ApplicationController
  before_action :set_event, only: %i[create]
  # before_action :authenticate_user!

  def index
    @bookmarks = Bookmark.all
  end

  def create
    @bookmark = Bookmark.new
    @bookmark.user = current_user
    @bookmark.event = @event
    @bookmark.save
    redirect_to "#{request.referer}#event-#{@event.id}"
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end
end
