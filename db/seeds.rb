# #create_table "cars", force: :cascade do |t|
#     t.string  "make"
#     t.string  "condition"
#     t.text    "description"
#     t.integer "user_id"
#     t.string  "picture"
#   end

#   create_table "listings", force: :cascade do |t|
#     t.integer "user_id"
#     t.integer "car_id"
#     t.text    "description"
#     t.date    "start_date"
#     t.date    "end_date"
#     t.integer "price"
#   end

#   create_table "transactions", force: :cascade do |t|
#   end

#   create_table "users", force: :cascade do |t|
#     t.string "name"
#     t.string "location"
#     t.string "email"
#     t.string "password_digest"


User.destroy_all
Car.destroy_all
Listing.destroy_Al

User.create(name: 'Mr. No Cars', email: 'gordon.dugan2+no_cars@gmail.com', password: 'password', location: 'New York')
User.create(name: 'Mr. One Car', email: 'gordon.dugan2+one_car@gmail.com', password: 'password', location: 'Los Angeles')
User.create(name: 'Ms. Three Cars', email: 'gordon.dugan2+three_cars@gmail.com', password: 'password', location: 'San Diego')
User.create(name: 'Mrs. Listing', email: 'gordon.dugan2+listing@gmail.com', password: 'password', location: 'Chicago')