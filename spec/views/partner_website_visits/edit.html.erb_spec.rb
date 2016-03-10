require 'rails_helper'

RSpec.describe "partner_website_visits/edit", type: :view do
  before(:each) do
    @partner_website_visit = assign(:partner_website_visit, PartnerWebsiteVisit.create!(
      :partner_website => nil,
      :user => nil
    ))
  end

  it "renders the edit partner_website_visit form" do
    render

    assert_select "form[action=?][method=?]", partner_website_visit_path(@partner_website_visit), "post" do

      assert_select "input#partner_website_visit_partner_website_id[name=?]", "partner_website_visit[partner_website_id]"

      assert_select "input#partner_website_visit_user_id[name=?]", "partner_website_visit[user_id]"
    end
  end
end
