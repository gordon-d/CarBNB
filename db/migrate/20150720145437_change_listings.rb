class ChangeListings < ActiveRecord::Migration
  def change
  	add_column :listings, :seller_id, :string
  	add_column :listings, :active, :boolean
  	drop_table :transactions
  end
end
