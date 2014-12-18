json.array!(@quandaries) do |quandary|
  json.extract! quandary, :id, :title, :description, :rating
  json.url quandary_url(quandary, format: :json)
end
