json.array!(@documents) do |document|
  json.extract! document, :id, :document_name, :profile_id,  :warning_days, :warning_months,  :critical_days, :critical_months  :expire_days, :expire_months
  json.url document_url(document, format: :json)
end
