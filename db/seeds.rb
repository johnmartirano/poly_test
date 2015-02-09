# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

containers = []
containers << Container.create( name: "ContainerA" ) unless Container.find_by_name("ContainerA")
containers << Container.create( name: "ContainerB" ) unless Container.find_by_name("ContainerB")
containers << Container.create( name: "ContainerC" ) unless Container.find_by_name("ContainerC")

thing1_attrs = []
(1..5000).each do |i|
  thing1_attrs << { name: "#{i}one", feature1: "one#{i}", container_thing_attributes: { name: "#{i}one", container_id: containers.sample.id, thingable_type: "Thing1" } }
end

thing2_attrs = []
(1..5000).each do |i|
  thing2_attrs << { name: "#{i}two", feature2: "two#{i}", container_thing_attributes: { name: "#{i}two", container_id: containers.sample.id, thingable_type: "Thing2" } }
end

thing3_attrs = []
(1..5000).each do |i|
  thing3_attrs << { name: "#{i}three", feature3: "three#{i}", container_thing_attributes: { name: "#{i}three", container_id: containers.sample.id, thingable_type: "Thing3" } }
end

puts "creating thing1s"
thing1_attrs.each do |attrs|
  Thing1.create(attrs) unless Thing1.find_by_name(attrs[:name])
end

puts "creating thing2s"
thing2_attrs.each do |attrs|
  Thing2.create(attrs) unless Thing2.find_by_name(attrs[:name])
end

puts "creating thing3s"
thing3_attrs.each do |attrs|
  Thing3.create(attrs) unless Thing3.find_by_name(attrs[:name])
end

