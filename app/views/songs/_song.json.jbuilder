json.extract! song, :id, :artist_id, :title, :created_at, :updated_at
json.url artist_url(song, :id, format: :json)
