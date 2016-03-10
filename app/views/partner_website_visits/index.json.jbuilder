json.array!(@partner_website_visits) do |partner_website_visit|
  json.extract! partner_website_visit, :id, :partner_website_id, :user_id
  json.url partner_website_visit_url(partner_website_visit, format: :json)
end
