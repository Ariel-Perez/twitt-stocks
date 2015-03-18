class AddNeutralCountToMentions < ActiveRecord::Migration
  def change
    add_column :mentions, :neutral_count, :integer
  end
end
