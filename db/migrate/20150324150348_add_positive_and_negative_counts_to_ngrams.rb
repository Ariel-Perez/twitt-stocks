class AddPositiveAndNegativeCountsToNgrams < ActiveRecord::Migration
  def change
    add_column :unigrams, :positive_count, :integer
    add_column :unigrams, :negative_count, :integer
    add_column :unigrams, :neutral_count, :integer

    add_column :bigrams, :positive_count, :integer
    add_column :bigrams, :negative_count, :integer
    add_column :bigrams, :neutral_count, :integer

    add_column :trigrams, :positive_count, :integer
    add_column :trigrams, :negative_count, :integer
    add_column :trigrams, :neutral_count, :integer
  end
end
