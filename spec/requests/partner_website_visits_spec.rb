require 'rails_helper'

RSpec.describe "PartnerWebsiteVisits", type: :request do
  describe "GET /partner_website_visits" do
    it "works! (now write some real specs)" do
      get partner_website_visits_path
      expect(response).to have_http_status(200)
    end
  end
end
