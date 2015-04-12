json.array!(@alerts) do |alert|
  json.extract! alert, :id, :start_date, :end_date, :paper_id, :alert_status
  json.url alert_url(alert, format: :json)
end
