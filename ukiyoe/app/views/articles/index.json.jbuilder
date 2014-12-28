json.array!(@articles) do |article|
  json.extract! article, :id, :title, :content, :create_at, :last_edit, :status, :like
  json.url article_url(article, format: :json)
end
