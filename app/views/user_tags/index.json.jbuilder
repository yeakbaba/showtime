json.array!(@user_tags) do |user_tag|
  json.extract! user_tag, :id
  json.url user_tag_url(user_tag, format: :json)
end
