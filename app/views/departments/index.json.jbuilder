json.array!(@departments) do |department|
  json.extract! department, :id, :style, :name, :director, :responsible, :year_id
  json.url department_url(department, format: :json)
end
