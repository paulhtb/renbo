class CartItemsController < ApplicationController
  before_action :authenticate_user!

  def create
    @cart_item = CartItem.new
    @cart_item.cart = current_user.carts.last
    @cart_item.token_id = params[:token_id]
    @cart_item.save
  end

  def add
    @cart_item = CartItem.new
    @token = Token.find(params[:cart_item][:token_id])
    @cart_item.token = @token
    @cart_item.cart = current_user.carts.last
    @cart_item.save

    redirect_to request.referer
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    if request.referer.include? "/cart"
      redirect_to "/cart"
    else
      redirect_to request.referer
    end
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:token_id)
  end
end
