json.extract! message_thread, :id, :title, :job_id, :user_id, :created_at, :updated_at
json.url message_thread_url(message_thread, format: :json)