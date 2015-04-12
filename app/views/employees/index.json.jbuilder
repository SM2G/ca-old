json.array!(@employees) do |employee|
  json.extract! employee, :id, :is_active, :last_name, :first_name, :birthdate, :status, :profile_id
  json.url employee_url(employee, format: :json)
end
