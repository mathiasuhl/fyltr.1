require 'rails_helper'

RSpec.describe "partner_websites/edit", type: :view do
  before(:each) do
    @partner_website = assign(:partner_website, PartnerWebsite.create!(
      :url => "MyString",
      :token => "MyString",
      :user => nil
    ))
  end

  it "renders the edit partner_website form" do
    render

    assert_select "form[action=?][method=?]", partner_website_path(@partner_website), "post" do

      assert_select "input#partner_website_url[name=?]", "partner_website[url]"

      assert_select "input#partner_website_token[name=?]", "partner_website[token]"

      assert_select "input#partner_website_user_id[name=?]", "partner_website[user_id]"
    end
  end
end
