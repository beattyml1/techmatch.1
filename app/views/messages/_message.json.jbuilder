json.extract! message, :id, :message_thread_id, :user_id, :created_at, :updated_at
json.url message_url(message, format: :json)