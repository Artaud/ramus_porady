json.array!(@ukols) do |ukol|
  json.extract! ukol, :id, :funkce_id, :porada_id, :splneno, :deadline, :obsah
  json.url ukol_url(ukol, format: :json)
end
