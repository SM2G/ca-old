json.array!(@documents) do |document|
  json.extract! document, :id, :name, :profile_id,  :warning_days,  :critical_days,  :expire_days
  json.url document_url(document, format: :json)
end
