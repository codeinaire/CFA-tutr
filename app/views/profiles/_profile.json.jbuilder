json.extract! profile, :id, :name, :username, :bio, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
