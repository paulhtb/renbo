class TokensController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @tokens = Token.all.joins(:event)

    if params['evt-date'].present?
      @tokens = @tokens.where("events_tokens.start_time < ?", DateTime.now) if params['evt-date'] == "past"
      @tokens = @tokens.where(events_tokens: { start_time: DateTime.now.beginning_of_month..DateTime.now.end_of_month }) if params['evt-date'] == "month"
      @tokens = @tokens.where(events_tokens: { start_time: DateTime.now.beginning_of_year..DateTime.now.end_of_year }) if params['evt-date'] == "year"
      @tokens = @tokens.where("events_tokens.start_time > ?", DateTime.now.end_of_year) if params['evt-date'] == "later"
    end

    # @tokens = @tokens # To modify with status filter (for sale)

    @tokens = @tokens.extended_search(params['q']) if params['q'].present?
    @tokens = @tokens.category_search(params['category']) if params['category'].present?

    @tokens = @tokens.where("price_cents > #{params['price-min'].to_i * 100}") if params['price-min'].present?
    @tokens = @tokens.where("price_cents < #{params['price-max'].to_i * 100}") if params['price-max'].present?

    @tokens = @tokens.country_search(params['country']) if params['country'].present?
    @tokens = @tokens.city_search(params['city']) if params['city'].present?

    if params['rank'].present?
      @tokens = @tokens.order(:title) if params['rank'] == "az"
      @tokens = @tokens.order(title: :desc) if params['rank'] == "za"
      @tokens = @tokens.order(:price_cents) if params['rank'] == "cheap"
      @tokens = @tokens.order(price_cents: :desc) if params['rank'] == "expensive"

    else
      @tokens = @tokens.shuffle
    end

  end

  def show
    @token = Token.find(params[:id])

    redirect_to request.referer.to_s unless @token.status == "available"
  end

end
