# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
tag_arr = ["Test", "Kitchen","Bath","Bedroom","Living","Dining","Outdoor","Kids","Home Office","Storage & Closets","Exterior","Basement","Entry","Garage And Shed","Gym","Hall","Laundry","Staircase","Wine Cellar","Ligtning" ]
tag_arr.each { |e|  tag = Tag.create(:name => e) }

puts "*********Tags Created **********"

user = User.create(:email => "0", :first_name => "Test", :encrypted_password => "Test")

puts "*********User Created **********"

professional = Professional.create(:email => "0", :first_name => "Test", :encrypted_password => "Test")

puts "*********Professional Created **"

project = Project.create(:professional_id => professional.id, :name => "Test")

puts "*********Project Created *******"

photo = Photo.create(:professional_id => professional.id, :tag_id => 1, :project_id =>project.id, :name => "Test")

puts "*********Photo Created *********"

comment = Comment.create(:professional_id => professional.id, :photo_id => photo.id, :project_id =>project.id, :description => "Test")

puts "*********Comment Created *******"

puts "\n...Database successfully seeded!\n\n"