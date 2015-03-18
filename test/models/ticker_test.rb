# == Schema Information
#
# Table name: tickers
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  cashtag       :string(255)
#  official_name :string(255)
#

require 'test_helper'

class TickerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
