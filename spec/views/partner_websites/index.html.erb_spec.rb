require 'rails_helper'

RSpec.describe "partner_websites/index", type: :view do
  before(:each) do
    assign(:partner_websites, [
      PartnerWebsite.create!(
        :url => "Url",
        :token => "Token",
        :user => nil
      ),
      PartnerWebsite.create!(
        :url => "Url",
        :token => "Token",
        :user => nil
      )
    ])
  end

  it "renders a list of partner_websites" do
    render
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Token".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
