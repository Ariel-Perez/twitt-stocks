json.array!(@tickers) do |ticker|
  json.extract! ticker, :id
  json.extract! ticker, :name
  json.extract! ticker, :cashtag
  json.extract! ticker, :official_name
  json.url ticker_url(ticker, format: :json)
end
