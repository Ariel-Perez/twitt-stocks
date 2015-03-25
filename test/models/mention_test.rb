# == Schema Information
#
# Table name: mentions
#
#  id             :integer          not null, primary key
#  ticker_id      :integer
#  positive_count :integer
#  negative_count :integer
#  created_at     :datetime
#  updated_at     :datetime
#  neutral_count  :integer
#

require 'test_helper'

class MentionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
