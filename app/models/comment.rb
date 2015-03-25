# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  ticker_id  :integer
#  text       :string(255)
#  sentiment  :integer
#  created_at :datetime
#  updated_at :datetime
#  support    :integer
#  extract    :string(255)
#  url        :string(255)
#

class Comment < ActiveRecord::Base
    belongs_to :ticker
end
