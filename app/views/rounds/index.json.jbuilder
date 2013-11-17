json.array!(@rounds) do |round|
  json.extract! round, :name, :face, :distance, :total_arrows, :scores
  json.url round_url(round, format: :json)
end
