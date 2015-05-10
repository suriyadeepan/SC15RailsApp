json.array!(@apis) do |api|
  json.extract! api, :id, :api_key
  json.url api_url(api, format: :json)
end
