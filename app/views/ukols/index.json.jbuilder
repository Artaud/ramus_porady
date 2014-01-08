json.array!(@ukols) do |ukol|
  json.extract! ukol, :id, :porada_id, :manazer_id, :popis, :splnen, :deadline
  json.url ukol_url(ukol, format: :json)
end
