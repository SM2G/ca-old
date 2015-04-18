json.array!(@filter_boxes) do |filter_box|
  json.extract! filter_box, :id
  json.url filter_box_url(filter_box, format: :json)
end
