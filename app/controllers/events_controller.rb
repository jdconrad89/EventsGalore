class EventsController < ApplicationController

  def index
    @events = get_events_from_galore
  end
end
