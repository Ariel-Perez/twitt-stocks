# == Schema Information
#
# Table name: trigrams
#
#  id             :integer          not null, primary key
#  ticker_id      :integer
#  text           :string(255)
#  count          :integer
#  created_at     :datetime
#  updated_at     :datetime
#  positive_count :integer
#  negative_count :integer
#  neutral_count  :integer
#

class Trigram < ActiveRecord::Base
    belongs_to :ticker
end
