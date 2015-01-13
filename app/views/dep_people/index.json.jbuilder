json.array!(@dep_people) do |dep_person|
  json.extract! dep_person, :id, :department_id, :contract_id, :person_id
  json.url dep_person_url(dep_person, format: :json)
end
