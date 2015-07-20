class ChangeListingsColumn < ActiveRecord::Migration
  def change
  	rename_column :listings, :user_id, :buyer_id
  end
end
