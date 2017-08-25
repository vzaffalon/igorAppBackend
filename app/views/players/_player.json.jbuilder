json.extract! player, :id, :nickname, :description, :picture, :user_id, :adventure_id, :created_at, :updated_at
json.url player_url(player, format: :json)
