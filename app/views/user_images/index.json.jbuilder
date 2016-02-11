json.array!(@user_images) do |user_image|
  json.extract! user_image, :id
  json.url user_image_url(user_image, format: :json)
end
