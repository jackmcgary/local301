json.array!(@events) do |event|
  json.extract! event, :id, :name, :starts_at, :ends_at, :description, :is_public
  json.url event_url(event, format: :json)
end
