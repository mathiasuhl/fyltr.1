require 'rails_helper'

RSpec.describe "payments/new", type: :view do
  before(:each) do
    assign(:payment, Payment.new(
      :user => nil,
      :partner_website => nil
    ))
  end

  it "renders new payment form" do
    render

    assert_select "form[action=?][method=?]", payments_path, "post" do

      assert_select "input#payment_user_id[name=?]", "payment[user_id]"

      assert_select "input#payment_partner_website_id[name=?]", "payment[partner_website_id]"
    end
  end
end
