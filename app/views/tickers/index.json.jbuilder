json.array!(@tickers) do |ticker|
  json.extract! ticker, :id
  json.url ticker_url(ticker, format: :json)
end
