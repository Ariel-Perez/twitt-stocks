class AddCashtagAndOfficialNameToTickers < ActiveRecord::Migration
  def change
    add_column :tickers, :cashtag, :string
    add_column :tickers, :official_name, :string
  end
end
