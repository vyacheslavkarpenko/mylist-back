json.extract! list, :id, :title, :excerpt, :description, :upvotes, :created_at, :updated_at
json.url list_url(list, format: :json)
