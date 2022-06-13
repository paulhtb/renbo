class UsersController < ApplicationController
  def collection
    @tokens = User.find(params[:user_id]).tokens
  end
end
