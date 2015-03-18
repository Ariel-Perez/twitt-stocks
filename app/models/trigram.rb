# == Schema Information
#
# Table name: trigrams
#
#  id         :integer          not null, primary key
#  ticker_id  :integer
#  date       :datetime
#  text       :string(255)
#  count      :integer
#  created_at :datetime
#  updated_at :datetime
#

class Trigram < ActiveRecord::Base
    belongs_to :ticker
end
