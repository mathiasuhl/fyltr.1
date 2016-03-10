class CreatePartnerWebsites < ActiveRecord::Migration
  def change
    create_table :partner_websites do |t|
      t.string :url
      t.string :token
      t.references :user, index: true

      t.timestamps
    end
  end
end
