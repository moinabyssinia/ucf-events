class EventsController < ApplicationController

    require 'rest-client'

    def index
        @event = find_event
    end

    def find_event
        response = RestClient.get('https://events.ucf.edu/this-week/feed.json').body

        JSON.parse(response)
    end
end
