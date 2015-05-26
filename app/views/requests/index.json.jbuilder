json.array!(@requests) do |request|
  json.extract! request, :id, :message, :user_id, :start_date, :end_date, :n_of_people, :accepted
  json.url request_url(request, format: :json)
end
