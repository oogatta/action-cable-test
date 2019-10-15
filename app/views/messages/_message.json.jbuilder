json.extract! message, :id, :body, :from_id, :from_type, :to_id, :to_type, :created_at, :updated_at
json.url message_url(message, format: :json)
