# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Ticker.create([{name: 'Apple', cashtag: '$AAPL', official_name: 'Apple Inc'}, 
                {name: 'Samsung', cashtag: '$SSNLF', official_name: 'Samsung Electronics Co Ltd'}, 
                {name: 'Google', cashtag: '$GOOG', official_name: 'Google Inc'}, 
                {name: 'Microsoft', cashtag: '$MSFT', official_name: 'Microsoft Corporation'}])