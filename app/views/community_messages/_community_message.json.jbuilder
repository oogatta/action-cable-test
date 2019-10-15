json.extract! community_message, :id, :community_id, :user_id, :body, :created_at, :updated_at
json.url community_message_url(community_message, format: :json)
