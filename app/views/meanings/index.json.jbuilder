json.array!(@meanings) do |meaning|
  json.extract! meaning, :id, :meaning_number, :part_of_speech, :definition
  json.url meaning_url(meaning, format: :json)
end
