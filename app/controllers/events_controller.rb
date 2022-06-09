class EventsController < ApplicationController
    def index
        if params["searchq"]
            redirect_to root_path unless params["searchq"] =~ /(\w|\d)+/
            @events = Event.where("address iLIKE ?", "%#{params['searchq']}%")
                         .or(Event.where("title iLIKE ?", "%#{params['searchq']}%"))
                         .or(Event.where("category iLIKE ?", "%#{params['searchq']}%")).limit(50)
            end
    end
end
