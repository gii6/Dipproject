json.array!(@note_styles) do |note_style|
  json.extract! note_style, :id, :name, :code, :style
  json.url note_style_url(note_style, format: :json)
end
