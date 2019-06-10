# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create email: 'a@a', password: '123456'

Person.create name: 'Guilherme Noll', type_person: 'Física', document: '102.944.419-64'

Person.create name: 'Graziela Schmitz', type_person: 'Física', document: '112.946.969-71'

Cashier.create description: 'CAIXA - PRINCIPAL', balance: 535.00

Cashier.create description: 'CONTA CORRENTE - BRADESCO', balance: 1255.00