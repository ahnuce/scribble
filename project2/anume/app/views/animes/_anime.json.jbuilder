json.extract! anime, :id, :title, :episodes, :photo_url, :created_at, :updated_at
json.url anime_url(anime, format: :json)