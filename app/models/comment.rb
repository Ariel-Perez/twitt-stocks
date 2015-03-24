# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  ticker_id  :integer
#  text       :string(255)
#  sentiment  :integer
#  date       :datetime
#  created_at :datetime
#  updated_at :datetime
#

class Comment < ActiveRecord::Base
    belongs_to :ticker
end
