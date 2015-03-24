class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :ticker_id
      t.string :text
      t.integer :sentiment
      t.datetime :date

      t.timestamps
    end

    add_index :comments, :ticker_id
    add_index :comments, :date
  end
end
