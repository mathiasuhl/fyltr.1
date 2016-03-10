require 'rails_helper'

RSpec.describe "partner_websites/show", type: :view do
  before(:each) do
    @partner_website = assign(:partner_website, PartnerWebsite.create!(
      :url => "Url",
      :token => "Token",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Token/)
    expect(rendered).to match(//)
  end
end
