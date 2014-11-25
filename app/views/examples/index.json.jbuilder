json.array!(@examples) do |example|
  json.extract! example, :id, :body, :source
  json.url example_url(example, format: :json)
end
