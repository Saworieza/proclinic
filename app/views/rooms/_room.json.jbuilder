json.extract! room, :id, :ward_id, :number, :availability, :user_id, :created_at, :updated_at
json.url room_url(room, format: :json)
