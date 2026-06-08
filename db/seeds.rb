# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

PostEditor.destroy_all
Post.destroy_all
Editor.destroy_all
User.destroy_all

# test user creation
u1 = User.create!(name: "Alice", email: "alice@example.com", address: "123 Main St")
u2 = User.create!(name: "Bob", email: "bob@example.com", address: "456 Oak Ave")

# test the 1:m assosiation
p1 = Post.create!(title: "Day 4 Lab Guide", content: "Building manual M:M relationships.", creator: u1)
p2 = Post.create!(title: "Under the hood of Rails", content: "MVC architecture is powerful.", creator: u2)

# test the m:m association
ed1 = Editor.create!(name: "Tech Editor Alpha")
ed2 = Editor.create!(name: "Senior Editor Beta")

p1.editors << [ed1, ed2]
p2.editors << [ed1]

puts "Successfully seeded: #{User.count} users, #{Post.count} posts, and #{Editor.count} editors!"