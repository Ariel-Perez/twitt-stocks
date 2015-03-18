json.array!(@mentions) do |mention|
  json.extract! mention, :id
  json.url mention_url(mention, format: :json)
end
