# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeds adding data ..."

user_mert = User.create(name:"Mert", email:"mert@hotmail.com", password: "12345678", role:"user")
group_financial = Group.create(user:user_mert, name:"Financial", icon:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtLHJ5rsDX4MDD0RKixJpMM733IVFMUn42ag&usqp=CAU")
group_sport = Group.create(user:user_mert, name:"Sport", icon:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP9328h-fcBG-597LoD_XKwbe9OSetI7vF_g&usqp=CAU")
payment_stock = Payment.create(user:user_mert, name:"Stock", amount: 1000.5)
payment_food = Payment.create(user:user_mert, name:"Food", amount: 10.5)
payment_health = Payment.create(user:user_mert, name:"Health", amount: 30.7)
group_financial.payments << [payment_stock]
group_sport.payments << [payment_food] 
group_sport.payments << [payment_health]

