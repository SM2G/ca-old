#json.extract! @validaion_session, :id, :created_at, :updated_at

#json.array!(@sessions) do |session|
#  json.extract! session, :id
#  json.url session_url(session, format: :json)
#end

json.array!(@sessions) do |session|
  json.extract! session, :id, session_start_datetime: , session_temp:
  , session_hygro: , employee_id: , dog_id:
  , slot_1_filter: , slot_1_temp:
  , slot_2_filter: , slot_2_temp:
  , slot_3_filter: , slot_3_temp:
  , slot_4_filter: , slot_4_temp:
  , slot_5_filter: , slot_5_temp:
  , result: , comments: , created_at: , updated_at:
  json.url session_url(session, format: :json)
end
