class TicketsController < ApplicationController
  skip_before_action :authenticate_user!
end
