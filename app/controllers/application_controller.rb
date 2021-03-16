require 'json'

class ApplicationController < ActionController::Base

  def get_events_from_galore
    headers = { "api_key" => ENV["galore_api_key"]}
    response = HTTParty.get("https://api.getgalore-staging.com/v1/events", headers: headers )

    JSON.parse(response.body).values_at("series", "activities").flatten
  end
end
