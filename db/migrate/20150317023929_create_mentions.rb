class CreateMentions < ActiveRecord::Migration
  def change
    create_table :mentions do |t|
      t.integer :ticker_id
      t.datetime :date
      t.integer :positive_count
      t.integer :negative_count

      t.timestamps
    end
    add_index :mentions, :ticker_id
    add_index :mentions, :date
  end
end
