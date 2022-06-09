class EventsController < ApplicationController
    def index
        if params["q"]
            redirect_to root_path unless params["q"] =~ /(\w|\d)+/
            @events = Event.where("address iLIKE ?", "%#{params['q']}%")
                         .or(Event.where("name iLIKE ?", "%#{params['q']}%"))
                         .or(Event.where("category iLIKE ?", "%#{params['q']}%"))
                         .or(Event.where("music_genre iLIKE ?", "%#{params['q']}%"))
                        #  .or(Event.where("artist iLIKE ?", "%#{params['q']}%"))
                        # ^^^ need to add artist to db ^^^
                         .or(Event.where("city iLIKE ?", "%#{params['q']}%"))
            end
        # else redirect_to root_path
    end

    def show
        @events = Event.find(params[:id])
    end
end
