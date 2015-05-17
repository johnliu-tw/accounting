json.array!(@consumes) do |consume|
  json.extract! consume, :id, :name, :cost, :kind
  json.url consume_url(consume, format: :json)
end
