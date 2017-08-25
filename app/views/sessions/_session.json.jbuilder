json.extract! session, :id, :date, :title, :description, :adventure_id, :created_at, :updated_at
json.url session_url(session, format: :json)
