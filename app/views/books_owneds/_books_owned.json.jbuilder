json.extract! books_owned, :id, :user_id, :book_id, :created_at, :updated_at
json.url books_owned_url(books_owned, format: :json)
