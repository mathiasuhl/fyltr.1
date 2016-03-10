class CreatePartnerWebsiteVisits < ActiveRecord::Migration
  def change
    create_table :partner_website_visits do |t|
      t.references :partner_website, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
