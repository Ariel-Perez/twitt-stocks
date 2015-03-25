# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tech = Category.create(name: 'Tecnología')
food = Category.create(name: 'Alimentos')

apple = Ticker.create(name: 'Apple', cashtag: '$AAPL', official_name: 'Apple Inc', category_id: tech.id)
samsung = Ticker.create(name: 'Samsung', cashtag: '$SSNLF', official_name: 'Samsung Electronics Co Ltd', category_id: tech.id)
google = Ticker.create(name: 'Google', cashtag: '$GOOG', official_name: 'Google Inc', category_id: tech.id)
microsoft = Ticker.create(name: 'Microsoft', cashtag: '$MSFT', official_name: 'Microsoft Corporation', category_id: tech.id)

Unigram.create([{ticker_id: apple.id, date: Date.current, text: 'iPhone', count: 15, positive_count: 15, neutral_count: 0, negative_count: 0},
                {ticker_id: apple.id, date: Date.current, text: 'awesome', count: 10, positive_count: 10, neutral_count: 0, negative_count: 0},
                {ticker_id: apple.id, date: Date.current, text: 'excellent', count: 3, positive_count: 3, neutral_count: 0, negative_count: 0},
                {ticker_id: apple.id, date: Date.current, text: 'best', count: 6, positive_count: 6, neutral_count: 0, negative_count: 0},
                {ticker_id: apple.id, date: Date.current, text: 'great', count: 5, positive_count: 5, neutral_count: 0, negative_count: 0},
                {ticker_id: apple.id, date: Date.current, text: 'iOS', count: 8, positive_count: 8, neutral_count: 0, negative_count: 0},
                {ticker_id: apple.id, date: Date.current, text: 'sales', count: 12, positive_count: 12, neutral_count: 0, negative_count: 0}])

Bigram.create([{ticker_id: apple.id, date: Date.current, text: 'smartphone sales', count: 8, positive_count: 8, neutral_count: 0, negative_count: 0},
               {ticker_id: apple.id, date: Date.current, text: 'beats Samsung', count: 5, positive_count: 5, neutral_count: 0, negative_count: 0},
               {ticker_id: apple.id, date: Date.current, text: 'Apple stocks', count: 3, positive_count: 3, neutral_count: 0, negative_count: 0}])

Trigram.create([{ticker_id: apple.id, date: Date.current, text: 'beats Samsung smartphone', count: 5, positive_count: 5, neutral_count: 0, negative_count: 0},
                {ticker_id: apple.id, date: Date.current, text: 'top smartphone sales', count: 3, positive_count: 3, neutral_count: 0, negative_count: 0},
                {ticker_id: apple.id, date: Date.current, text: 'investing Apple stocks', count: 2, positive_count: 2, neutral_count: 0, negative_count: 0}])

Mention.create([{ticker_id: apple.id, date: Date.current, positive_count: 25, negative_count: 1, neutral_count: 2}])

Comment.create([{ticker_id: apple.id, date: Date.current, text: 'Apple outsells Samsung in smartphone sales for first time since 2011.', extract:'Strong interest in the iPhone 6 and iPhone 6 Plus helped Apple sell more smartphones than Samsung in the fourth quarter of 2014.', url: 'http://t.co/kptXcWujb9', support: 13, sentiment: 5},
                 {ticker_id: apple.id, date: Date.current, text: 'How buying Apple stock made these regular Americans rich.', extract: "In January 2005, the stock was trading for around $5 a share. Today it's worth about $130 a share and is the most valuable company in the world", url: "http://t.co/LKJigK2djS", support: 8, sentiment: 2}])