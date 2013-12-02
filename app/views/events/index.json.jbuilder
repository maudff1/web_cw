json.array!(@events) do |event|
  json.extract! event, :date, :logo, :title
  json.url event_url(event, format: :json)
end
