# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

friends = Friend.create([
  {
    first_name: 'Marlon',
    last_name: 'Guieb',
    email: 'marlon@gmail.com',
    phone: '09991234452',
    twitter: '@marlon'
  },
  {
    first_name: 'Jeds',
    last_name: 'Usbal',
    email: 'jeds@gmail.com',
    phone: '09991234452',
    twitter: '@jeds'
  }
])
