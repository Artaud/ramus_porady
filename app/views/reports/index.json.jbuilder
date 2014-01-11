json.array!(@reports) do |report|
  json.extract! report, :id, :porada_id, :obsah
  json.url report_url(report, format: :json)
end
