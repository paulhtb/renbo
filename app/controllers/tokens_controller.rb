class TokensController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

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

    @tokens = @tokens.where("price > #{params['price-min'].to_i}") if params['price-min'].present?
    @tokens = @tokens.where("price < #{params['price-max'].to_i}") if params['price-max'].present?

    @tokens = @tokens.country_search(params['country']) if params['country'].present?
    @tokens = @tokens.city_search(params['city']) if params['city'].present?

    if params['rank'].present?
      @tokens = @tokens.order(:title) if params['rank'] == "az"
      @tokens = @tokens.order(title: :desc) if params['rank'] == "za"
      @tokens = @tokens.order(:price) if params['rank'] == "cheap"
      @tokens = @tokens.order(price: :desc) if params['rank'] == "expensive"
    end

  end


end
