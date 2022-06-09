class EventsController < ApplicationController
    def index
        if params["q"]
            redirect_to root_path unless params["searchq"] =~ /(\w|\d)+/
            @events = Event.where("address iLIKE ?", "%#{params['q']}%")
                         .or(Event.where("title iLIKE ?", "%#{params['searchq']}%"))
                         .or(Event.where("category iLIKE ?", "%#{params['searchq']}%")).limit(50)
            end
        # else redirect_to root_path
    end

    def show
        @events = Event.find(params[:id])
    end
end
