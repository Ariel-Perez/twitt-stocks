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
#

require 'test_helper'

class MentionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
