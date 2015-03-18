class CreateBigrams < ActiveRecord::Migration
  def change
    create_table :bigrams do |t|
      t.integer :ticker_id
      t.datetime :date
      t.string :text
      t.integer :count

      t.timestamps
    end
    add_index :bigrams, :ticker_id
    add_index :bigrams, :date
  end
end
