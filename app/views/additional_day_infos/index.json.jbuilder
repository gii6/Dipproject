json.array!(@additional_day_infos) do |additional_day_info|
  json.extract! additional_day_info, :id, :day, :style, :year_id
  json.url additional_day_info_url(additional_day_info, format: :json)
end
