json.array!(@jednanis) do |jednani|
  json.extract! jednani, :id, :porada_id, :tema, :obsah
  json.url jednani_url(jednani, format: :json)
end
