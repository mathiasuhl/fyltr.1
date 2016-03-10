require 'rails_helper'

RSpec.describe "PartnerWebsites", type: :request do
  describe "GET /partner_websites" do
    it "works! (now write some real specs)" do
      get partner_websites_path
      expect(response).to have_http_status(200)
    end
  end
end
