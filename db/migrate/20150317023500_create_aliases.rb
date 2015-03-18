class CreateAliases < ActiveRecord::Migration
  def change
    create_table :aliases do |t|
      t.integer :ticker_id
      t.string :nick

      t.timestamps
    end
    add_index :aliases, :ticker_id
  end
end
