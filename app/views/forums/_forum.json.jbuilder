json.extract! forum, :id, :title, :url, :description, :created_at, :updated_at
json.url forum_url(forum, format: :json)
