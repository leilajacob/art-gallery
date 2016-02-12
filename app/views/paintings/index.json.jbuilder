json.array!(@paintings) do |painting|
  json.extract! painting, :id, :title, :price, :quantity, :description, :size, :materials, :category_id
  json.url painting_url(painting, format: :json)
end
