# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeds adding data ..."

user_mert = User.create(name:"Mert")
group_financial = Group.create(user:user_mert, name:"Financial", icon:"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAH0AAAB9CAMAAAC4XpwXAAAAY1BMVEUAAAD////t7e37+/sUFBTl5eXq6uqvr6/U1NT09PTg4OCTk5P4+Pg9PT3Gxsbw8PC+vr6np6doaGhVVVWEhIRhYWENDQ2ZmZlGRkZ3d3coKChubm4yMjK4uLghISE4ODhNTU2a3jvUAAAFfUlEQVRogcWb6XaCMBCFUbawCgoKCsr7P2VRAZMQyJ1I23tOf2jBT2tmn1o7M8VpXdap4c2TLLPb2NV6qvP+g86sQV/ijehBNdKt8u/pkfWR/9f0IOHo17+mpxYvNjxrM/92vNHMwIReCvR6eEun98P8l+m5Jer5cd3j+Mg5/Cb9UFiyirzmHlFsEKKzNs/99Cn/OGPL2pjulVoipybYlk6Cj4dwKzrTE3m529IzEpzmefX0kEQPN6bvEj1z0pEER+gtgU7MNxB7b2B4Em9Pv8D0iAaH6Ic7CD+TzA2k7+auXa3S/g066nAuRDgY4/Sx5SWascN0zN+diScepQeQxyG6GpiOGR0pqaLQIWfP9K9jRoeCPPnQwXTk3FGtnZBVAs6eDMfpwLn7Rbrn/Cd9V/8rPTz/J31308DpzoZC10S6Gx1OquPSapmdtAZwWhUZ+yfll+9ULaVyNaT38tpC8jv32jduHRl1TkKWRm+1jJrKfU1fVkgMc5vS87tVXRgh2MD0MCo1HywYHMLJhzMskN6+4vttv3JJ/sn6rxHIR+i2P0WYY6a+IpUdYQHZgZ4e+0Ipcy/z1A3G9kgce24WlYr45xRAC0VLT7v5K9+T5Hg7HvufKmkWy6zG154/DT3Qx9UVlbpMb52e6lOKdWni3ho90MVUQI/V07dCZ5SWyaIctZXo6Blateu0Utku0uVe8Bdaru+W6GjDAFK35CPVdJvWHdXqumB6SjoGd3qh+Icar6RD8EvYiz1AfKPMQlR0yMydEL/2qbvK8BV0rD030MGOTq+rAj+ng71BMt3q5kF/Rk/1L/PS+U2nGMe83pDp3pVGv5w6PBLNGqky/YS9TpVPSZ4dZjX6luUWtkTHvvRGjhxxri1wX3IkpyfSsZZoocgZQbuXBicC3Yb+7qo2ODw6EkfWAh2Ka5UCjrfwz4LL5ekuFNG52217zBs7lC7O63g6FFUnow2iU5JUx6jt34ENw8WOJkfHRl/p/Ooi9An0Rk2Hkudm9NZ8eDlj9jbIV9E96NZqtDbzlLNR0bFjO9G/yLazOT3AUtgpULmod50rmdPBHNaZDC42TzyZTIfzSK4zxmrSafuokOkueudpxymM0LxO0PUg0XGLFT114K+0EBeVSXQwrj8lNwZ9+vmrRTqc0vQ6y92jmFzkNweBjmZzb+VyU4J8/JlApzjqXl0m8amf3hfo5LrtlIkJTke7/cjTYwPDuQtNMdpmypiivOmBmds8fs6fTTO8a8DRXUOnxSWYtKgzbCm86fqJzyJ+pOPLGTM68cjzGqMO8Ytvt6EzM7q/LT3SX7oB3WERXzZOIY+Y6xjSe5yXn0YLLUebD4gew5D+7rx66aVX/pmCUJaxZDrhyKjHIzY1xeXpwHh70EPd86dmuA5v77ivK5RwcoQVvA28x6Ws3QN6dns/cHRCjEvkeYftGwTIR8zRafG9bj9VdFoYNdKHHsZAJ3qq5/2vd48Vf3NFAp2W1z2VvA6/ZzhCSAU61rbgVX1Dv7sCnZ7YfUUfW1cjnZYcWGMpjZuqoItEh+u4UQ3be96e6t4HuRKd0mx+60yZTYia+lYTnX7qzZXO6JQ68kt9OuUfOm1X/Bu5CrqBvzMTN5vke5UbD+EWxE8ohD7tJmNfjapggf4X+ESYy4nTAe+38aU4nJDnMl9tOmgl52WziViG/6cAVY/Z/zXMp4H7yLwHusqO5ltwqjnsPtpq7eCjxlel4ur5+6HtNmWXrXr1aXHzYZ9v5PjPt3Zx62dt4yVml9KoDzupuuXh2sKRZtfIPrgsqk9VQ4vk16Y7FTlzdatW0IabHexZ2kZR1CVJ8soqHLH0Gp7rf9v1V2Wpu4+hHT/6bqG3fypkvMLXc/Tlzh+KuUfhO+8sTAAAAABJRU5ErkJggg==")
group_sport = Group.create(user:user_mert, name:"Sport", icon:"https://www.shutterstock.com/image-vector/running-man-athletics-marathon-summer-260nw-1347864386.jpg")
payment_stock = Payment.create(user:user_mert, name:"Stock", amount: 1000.5)
payment_private = Payment.create(user:user_mert, name:"Private", amount: 1000.5)
group_sport.payments << [payment_stock] 
group_financial.payments << [payment_stock]
group_financial.payments << [payment_private]

