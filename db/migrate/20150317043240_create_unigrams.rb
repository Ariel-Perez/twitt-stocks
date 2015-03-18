class CreateUnigrams < ActiveRecord::Migration
  def change
    create_table :unigrams do |t|
      t.integer :ticker_id
      t.datetime :date
      t.string :text
      t.integer :count

      t.timestamps
    end
    add_index :unigrams, :ticker_id
    add_index :unigrams, :date
  end
end
