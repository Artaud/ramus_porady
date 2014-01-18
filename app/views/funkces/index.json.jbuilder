json.array!(@funkces) do |funkce|
  json.extract! funkce, :id, :jmeno, :prijmeni, :nazev_funkce
  json.url funkce_url(funkce, format: :json)
end
