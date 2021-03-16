require 'rails_helper'
require Rails.root.join('app/controllers/application_controller.rb')

describe ApplicationController do
  describe "get_events_from_galore" do
    let(:galore_response) { ApplicationController.new.get_events_from_galore }

    it "returns data regarding events" do
      expect(galore_response.first).to have_key("about")
      expect(galore_response.first).to have_key("available_spots")
      expect(galore_response.first).to have_key("price")
    end
  end
end
