class TransactionsController < ApplicationController
  def show
    @transaction = current_user.payments.find(params[:id])
  end
end
