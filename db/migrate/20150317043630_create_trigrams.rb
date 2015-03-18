class CreateTrigrams < ActiveRecord::Migration
  def change
    create_table :trigrams do |t|
      t.integer :ticker_id
      t.datetime :date
      t.string :text
      t.integer :count

      t.timestamps
    end
    add_index :trigrams, :ticker_id
    add_index :trigrams, :date
  end
end
