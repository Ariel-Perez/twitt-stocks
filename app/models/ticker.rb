# == Schema Information
#
# Table name: tickers
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  cashtag       :string(255)
#  official_name :string(255)
#  category_id   :integer
#

class Ticker < ActiveRecord::Base
    has_many :mentions
    has_many :comments

    has_many :unigrams
    has_many :bigrams
    has_many :trigrams

    belongs_to :category
end
