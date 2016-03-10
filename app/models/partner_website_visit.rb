class PartnerWebsiteVisit < ActiveRecord::Base
  belongs_to :partner_website
  belongs_to :user
end
