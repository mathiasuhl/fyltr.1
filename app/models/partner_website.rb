class PartnerWebsite < ActiveRecord::Base
  belongs_to :user
  has_many :partner_website_visits
  validates_formatting_of :url, using: :url
end
