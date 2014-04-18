json.array!(@motivators) do |motivator|
  json.extract! motivator, :id, :name
  json.url motivator_url(motivator, format: :json)
end
