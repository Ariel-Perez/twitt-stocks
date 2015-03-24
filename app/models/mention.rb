# == Schema Information
#
# Table name: mentions
#
#  id             :integer          not null, primary key
#  ticker_id      :integer
#  date           :datetime
#  positive_count :integer
#  negative_count :integer
#  created_at     :datetime
#  updated_at     :datetime
#  neutral_count  :integer
#

class Mention < ActiveRecord::Base
    belongs_to :ticker
end
