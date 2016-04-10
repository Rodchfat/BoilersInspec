json.array!(@boilers) do |boiler|
  json.extract! boiler, :id, :make, :type, :year, :facility_id
  json.url boiler_url(boiler, format: :json)
end
