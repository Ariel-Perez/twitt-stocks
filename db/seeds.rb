# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


apple = Ticker.create(name: 'Apple', cashtag: '$AAPL', official_name: 'Apple Inc')
samsung = Ticker.create(name: 'Samsung', cashtag: '$SSNLF', official_name: 'Samsung Electronics Co Ltd')
google = Ticker.create(name: 'Google', cashtag: '$GOOG', official_name: 'Google Inc')
microsoft = Ticker.create(name: 'Microsoft', cashtag: '$MSFT', official_name: 'Microsoft Corporation')

Unigram.create([{ticker_id: apple.id, date: Date.current, text: 'iPhone', count: 15},
                {ticker_id: apple.id, date: Date.current, text: 'awesome', count: 10},
                {ticker_id: apple.id, date: Date.current, text: 'excellent', count: 3},
                {ticker_id: apple.id, date: Date.current, text: 'best', count: 6},
                {ticker_id: apple.id, date: Date.current, text: 'great', count: 5},
                {ticker_id: apple.id, date: Date.current, text: 'iOS', count: 8},
                {ticker_id: apple.id, date: Date.current, text: 'sales', count: 12}])

Bigram.create([{ticker_id: apple.id, date: Date.current, text: 'smartphone sales', count: 8},
               {ticker_id: apple.id, date: Date.current, text: 'beats Samsung', count: 5},
               {ticker_id: apple.id, date: Date.current, text: 'Apple stocks', count: 3}])

Trigram.create([{ticker_id: apple.id, date: Date.current, text: 'beats Samsung smartphone', count: 5},
                {ticker_id: apple.id, date: Date.current, text: 'top smartphone sales', count: 3},
                {ticker_id: apple.id, date: Date.current, text: 'investing Apple stocks', count: 2}])

Mention.create([{ticker_id: apple.id, date: Date.current, positive_count: 15, negative_count: 1, neutral_count: 2}])


