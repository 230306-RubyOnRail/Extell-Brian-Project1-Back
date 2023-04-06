# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#User.destroy_all

user1 = User.create(name: "John Doe", email: "jdoe@gmail.com", password_digest: "password1", manager: false)
user2 = User.create(name: "Jane Doe", email: "janedoe@gmail.com", password_digest: "password2", manager: true)
user3 = User.create(name: "Sum Guy", email: "sg23@gmail.com", password_digest: "password3", manager: false)

request1 = Reimbursement.create(status: 'pending', amount: 9118.52, content: 'new car', user_id: user1.id)
request2 = Reimbursement.create(status: 'pending', amount: 421.88, content: 'new shoes', user_id: user3.id)
request3 = Reimbursement.create(status: 'pending', amount: 220.27, content: 'new desk', user_id: user1.id)
request4 = Reimbursement.create(status: 'pending', amount: 54.35, content: 'hungry', user_id: user3.id)
request5 = Reimbursement.create(status: 'pending', amount: 1000.00, content: 'entertainment for clients', user_id: user1.id)
request6 = Reimbursement.create(status: 'pending', amount: 300.00, content: 'business dinner', user_id: user1.id)
request7 = Reimbursement.create(status: 'pending', amount: 5000.00, content: 'charity', user_id: user1.id)

