class User < ActiveRecord::Base
	has_many :cars
	has_many :purchased_listings, :class_name => "Listing", :foreign_key => 'buyer_id'
	has_many :seller_listings, :class_name => "Listing", :foreign_key => 'seller_id'
	has_secure_password
end