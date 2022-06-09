class CartItemsController < ApplicationController
    def destroy
        @cart_items = Cart_items.find(params[:id])
        @cart_items.destroy
        @event = @cart_items.event
        redirect_to "#{request.referer}#event-#{@event.id}"
    end
end
