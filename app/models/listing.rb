class Listing < ActiveRecord::Base
	belongs_to :seller, :class_name => 'User'
	belongs_to :buyer, :class_name => 'User'
	has_one :car

end
