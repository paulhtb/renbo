class CartItemsController < ApplicationController
  before_action :authenticate_user!

  def create
    @cart_item = CartItem.new
    @cart_item.cart = current_user.carts.last
    @cart_item.token_id = params[:token_id]
    @cart_item.save
  end

  def add
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.cart = current_user.carts.last
    @cart_item.save

    redirect_to ticket_path(@cart_item.token.ticket)
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    if request.referer.include? "/cart"
      redirect_to "/cart"
    else
      redirect_to ticket_path(@cart_item.token.ticket)
    end
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:token_id)
  end
end
