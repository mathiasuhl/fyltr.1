require "rails_helper"

RSpec.describe PartnerWebsiteVisitsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/partner_website_visits").to route_to("partner_website_visits#index")
    end

    it "routes to #new" do
      expect(:get => "/partner_website_visits/new").to route_to("partner_website_visits#new")
    end

    it "routes to #show" do
      expect(:get => "/partner_website_visits/1").to route_to("partner_website_visits#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/partner_website_visits/1/edit").to route_to("partner_website_visits#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/partner_website_visits").to route_to("partner_website_visits#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/partner_website_visits/1").to route_to("partner_website_visits#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/partner_website_visits/1").to route_to("partner_website_visits#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/partner_website_visits/1").to route_to("partner_website_visits#destroy", :id => "1")
    end

  end
end
