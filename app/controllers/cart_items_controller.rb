class CartItemsController < ApplicationController
  before_action :authenticate_user!

  def create
    @cart_item = CartItem.new
    @cart_item.cart = current_user.carts.last
    @cart_item.token_id = params[:token_id]
    @cart_item.save
  end

  def destroy
    @cart_items = CartItem.find(params[:id])
    @cart_items.destroy
    redirect_to "/cart"
  end
end
