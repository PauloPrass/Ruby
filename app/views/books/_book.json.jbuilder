json.extract! book, :id, :title, :description, :url_image, :author, :created_at, :updated_at
json.url book_url(book, format: :json)
