require 'rails_helper'

RSpec.describe "partner_website_visits/new", type: :view do
  before(:each) do
    assign(:partner_website_visit, PartnerWebsiteVisit.new(
      :partner_website => nil,
      :user => nil
    ))
  end

  it "renders new partner_website_visit form" do
    render

    assert_select "form[action=?][method=?]", partner_website_visits_path, "post" do

      assert_select "input#partner_website_visit_partner_website_id[name=?]", "partner_website_visit[partner_website_id]"

      assert_select "input#partner_website_visit_user_id[name=?]", "partner_website_visit[user_id]"
    end
  end
end
