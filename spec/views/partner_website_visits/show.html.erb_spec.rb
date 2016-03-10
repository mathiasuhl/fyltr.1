require 'rails_helper'

RSpec.describe "partner_website_visits/show", type: :view do
  before(:each) do
    @partner_website_visit = assign(:partner_website_visit, PartnerWebsiteVisit.create!(
      :partner_website => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
