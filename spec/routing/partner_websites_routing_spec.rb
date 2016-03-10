require "rails_helper"

RSpec.describe PartnerWebsitesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/partner_websites").to route_to("partner_websites#index")
    end

    it "routes to #new" do
      expect(:get => "/partner_websites/new").to route_to("partner_websites#new")
    end

    it "routes to #show" do
      expect(:get => "/partner_websites/1").to route_to("partner_websites#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/partner_websites/1/edit").to route_to("partner_websites#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/partner_websites").to route_to("partner_websites#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/partner_websites/1").to route_to("partner_websites#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/partner_websites/1").to route_to("partner_websites#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/partner_websites/1").to route_to("partner_websites#destroy", :id => "1")
    end

  end
end
