json.array!(@facilities) do |facility|
  json.extract! facility, :id, :name, :date
  json.url facility_url(facility, format: :json)
end
