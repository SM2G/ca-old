json.array!(@papers) do |paper|
  json.extract! paper, :id, :document_id, :expiration_date
  json.url paper_url(paper, format: :json)
end
