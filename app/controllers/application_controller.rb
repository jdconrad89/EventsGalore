class ApplicationController < ActionController::Base

  protected

    def get_events_from_galore
      headers = { "api_key" => ENV["galore_api_key"]}
      response = HTTParty.get("https://api.getgalore-staging.com/v1/events", headers: headers )

      binding.pry
      response.values_at("series", "activities").flatten
    end
end
