json.array!(@boilers) do |boiler|
  json.extract! boiler, :id, :make, :manfacture, :year, :facility_id
  json.url boiler_url(boiler, format: :json)
end
