# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Try just making a maindish

#   Doing it by hand .....
#	Maindish.create(name: 'Green eggs and ham')
#	Maindish.create(name: 'Spaghetti with meatballs')
#	Maindish.create(name: 'Swedish waffles with gjetost')

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'maindishes.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
	m = Maindish.new
	m.name = row['name']
	m.save
	puts "#{m.name} saved"
end

puts "There are now #{Maindish.count} rows in the Maindishes table."
