json.array!(@partner_websites) do |partner_website|
  json.extract! partner_website, :id, :url, :token, :user_id
  json.url partner_website_url(partner_website, format: :json)
end
