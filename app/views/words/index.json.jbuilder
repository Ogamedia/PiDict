json.array!(@words) do |word|
  json.extract! word, :id, :term, :pronunciation, :origin
  json.url word_url(word, format: :json)
end
