class RemoveExplicitDates < ActiveRecord::Migration
  def change
    remove_column :bigrams, :date, :datetime
    remove_column :unigrams, :date, :datetime
    remove_column :trigrams, :date, :datetime

    remove_column :comments, :date, :datetime
    remove_column :mentions, :date, :datetime
  end
end
