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

require 'test_helper'

class TrigramsTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
