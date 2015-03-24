class AddSupportExtractAndUrlToComments < ActiveRecord::Migration
  def change
    add_column :comments, :support, :integer
    add_column :comments, :extract, :string
    add_column :comments, :url, :string
  end
end
