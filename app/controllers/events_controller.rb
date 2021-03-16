class EventsController < ApplicationController

  def index
    @events = get_events_from_galore
  end

  def event_sessions
    binding.pry
    @session = params
  end
end
