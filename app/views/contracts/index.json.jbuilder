json.array!(@contracts) do |contract|
  json.extract! contract, :id, :post, :rate, :budget, :style, :start, :finish
  json.url contract_url(contract, format: :json)
end
