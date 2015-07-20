class Car < ActiveRecord::Base
	belongs_to :users
	belongs_to :listings
end