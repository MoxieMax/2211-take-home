# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Customer.destroy_all
Subscription.destroy_all
Tea.destroy_all

customers = FactoryBot.create_list(:customer, 4)
teas = FactoryBot.create_list(:tea, 10)
FactoryBot.create(:subscription, customer_id: customers.first.id, tea_id: teas.first.id)
FactoryBot.create(:subscription, customer_id: customers.first.id, tea_id: teas[2].id)
FactoryBot.create(:subscription, customer_id: customers[1].id, tea_id: teas[4].id)
FactoryBot.create(:subscription, customer_id: customers[2].id, tea_id: teas[6].id)
FactoryBot.create(:subscription, customer_id: customers[3].id, tea_id: teas[8].id)