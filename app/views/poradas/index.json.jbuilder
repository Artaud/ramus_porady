json.array!(@poradas) do |porada|
  json.extract! porada, :id, :datum
  json.url porada_url(porada, format: :json)
end
