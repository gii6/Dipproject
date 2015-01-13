json.array!(@years) do |year|
  json.extract! year, :id, :name, :is_current, :month
  json.url year_url(year, format: :json)
end
