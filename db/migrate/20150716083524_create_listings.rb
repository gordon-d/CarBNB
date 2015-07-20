class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
    	t.integer :user_id
    	t.integer :car_id
    	t.text :description
    	t.date :start_date
    	t.date :end_date
  		t.integer :price
    end
  end
end