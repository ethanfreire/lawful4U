# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#test users
user1 = Client.create(name: "Rick", email: "myemail@gmail.com", phone: 7863456657, address: "123 NW 4th st Coral Gables, FL")
user2 = Client.create(name: "Nevin", email: "myemail2@gmail.com", phone: 7865556657, address: "456 NW 7th st Kendall, FL")
user3 = Client.create(name: "Maria", email: "myemail3@gmail.com", phone: 8133456657, address: "890 NW 11th st Brickell, FL")

#test Lawyers

lawyer1 = Lawyer.create(name: "Michael", email: "lawfirm@gmail.com", phone: 3056784567, address: "432 NE 15 st Fort Lauderdale, FL", attorney_fee: 50 )

lawyer2 = Lawyer.create(name: "Mandy", email: "lawfirm2@gmail.com", phone: 3054564567, address: "432 NE 15 st Fort Lauderdale, FL", attorney_fee: 75 )

lawyer3 = Lawyer.create(name: "Alex", email: "lawfirm3@gmail.com", phone: 3059804567, address: "432 NE 15 st Fort Lauderdale, FL", attorney_fee: 45 )
