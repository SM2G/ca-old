json.array!(@employees) do |employee|
  json.extract! employee, :employee_id, :is_active, :last_name, :first_name, :birthdate, :status, :is_default, :is_cyno, :is_xray
  json.url employee_url(employee, format: :json)
end
