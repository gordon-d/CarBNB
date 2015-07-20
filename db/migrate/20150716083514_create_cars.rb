class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
    	t.string :make
    	t.string :condition
    	t.text :description
    	t.integer :user_id
    end
  end
end