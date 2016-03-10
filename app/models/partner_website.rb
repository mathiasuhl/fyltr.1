class PartnerWebsite < ActiveRecord::Base
  belongs_to :user
  has_many :partner_website_visits
end
