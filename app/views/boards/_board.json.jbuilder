json.extract! board, :id, :history_string, :game_name, :created_at, :updated_at
json.url board_url(board, format: :json)
