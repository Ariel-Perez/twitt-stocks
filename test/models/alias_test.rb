# == Schema Information
#
# Table name: aliases
#
#  id         :integer          not null, primary key
#  ticker_id  :integer
#  nick       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class AliasTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
