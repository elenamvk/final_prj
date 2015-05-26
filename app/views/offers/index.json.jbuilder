json.array!(@offers) do |offer|
  json.extract! offer, :id, :message, :user_id, :request_id, :offered
  json.url offer_url(offer, format: :json)
end
