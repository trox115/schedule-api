# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

TimeInterval.create([{label: '15 min', value: 15, price: 45}, {label: '30 min', value: 30, price: 75}, {label:'45 min', value: 45, price: 100}, {label:'60 min', value: 60, price: 150 }])