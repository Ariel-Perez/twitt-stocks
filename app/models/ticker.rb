class Ticker < ActiveRecord::Base
    has_many :mentions
    has_many :unigrams
    has_many :bigrams
    has_many :trigrams
end