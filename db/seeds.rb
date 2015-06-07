require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'plants.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = Plant.new
  t.category = row['category']
  t.pic = row['pic']
  t.dbw = row['dbw']
  t.display_name = row['display_name']

  t.save
  puts "#{t.display_name} saved"
end

puts "There are now #{Plant.count} rows in the plants table"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


