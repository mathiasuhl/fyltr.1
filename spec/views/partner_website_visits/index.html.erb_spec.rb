require 'rails_helper'

RSpec.describe "partner_website_visits/index", type: :view do
  before(:each) do
    assign(:partner_website_visits, [
      PartnerWebsiteVisit.create!(
        :partner_website => nil,
        :user => nil
      ),
      PartnerWebsiteVisit.create!(
        :partner_website => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of partner_website_visits" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
