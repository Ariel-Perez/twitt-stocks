# == Schema Information
#
# Table name: unigrams
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

require 'test_helper'

class UnigramTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
