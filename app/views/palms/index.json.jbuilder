json.array!(@palms) do |palm|
  json.extract! palm, :block, :number, :sph, :river, :road, :year_planted
  json.url palm_url(palm, format: :json)
end
