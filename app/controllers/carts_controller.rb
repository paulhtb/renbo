class CartsController < ApplicationController
  def show
    @cart = current_user.carts.last
  end
end
