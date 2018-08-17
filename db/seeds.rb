# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ title: 'Star Wars' }, { title: 'Lord of the Rings' }])
#   Character.create(title: 'Luke', movie: movies.first)

Product.create([{title: "Women's Closet Pack", category: "W"},{title:
"Ballet Flats", category: "W"}, {title: "Loafers and Slip-Ons",
category: "W"}, {title: "Sneakers and Lace-Ups", category: "W"}, {title: "Heels & Wedges",
category: "W"},{title:"Men's Loafers & Slip-Ons", category: "M"}, {title: "Men's Sneakers & Lace-
Ups", category: "M"}, {title: "Men's Closet Pack", category: "M"}])

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'reviews.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Review.new
  t.text = row['text']
  t.rating = row['rating']
  t.product_id = row['id']
  if t.save
    puts "saved"
  else 
    puts row['id']
  end 
end