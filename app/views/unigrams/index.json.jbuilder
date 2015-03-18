json.array!(@unigrams) do |unigram|
  json.extract! unigram, :id
  json.url unigram_url(unigram, format: :json)
end
