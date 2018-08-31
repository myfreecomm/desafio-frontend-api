# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Customer.delete_all

Customer.create({
  name: 'Márcio Braga', email: 'marcio.braga@minhaempresa.com.br',
  phone: '(21) 98987-7650', status: 'paying', subscription_amount: 250.99,
  profile_url: 'http://desafio.nexaas.com/profiles/MarcioBraga.png'
})

Customer.create({
  name: 'Felipe Cardoso', email: 'felipe.cardoso@minhaempresa.com.br',
  phone: '(21) 98987-7651', status: 'paying', subscription_amount: 250.99,
  profile_url: 'http://desafio.nexaas.com/profiles/FelipeCardoso.png'
})

Customer.create({
  name: 'Maria Silva', email: 'maria.silva@minhaempresa.com.br',
  phone: '(21) 98987-7652', status: 'overdue', subscription_amount: 750.99,
  profile_url: 'http://desafio.nexaas.com/profiles/MariaSilva.png'
})

Customer.create({
  name: 'Eduardo Lopes', email: 'eduardo.lopes@minhaempresa.com.br',
  phone: '(21) 98987-7653', status: 'overdue', subscription_amount: 250.99,
  profile_url: 'http://desafio.nexaas.com/profiles/EduardoLopes.png'
})

Customer.create({
  name: 'Nathalia Amaral', email: 'nathalia.amaral@minhaempresa.com.br',
  phone: '(21) 98987-7654', status: 'paying', subscription_amount: 150.99,
  profile_url: 'http://desafio.nexaas.com/profiles/NathaliaAmaral.png'
})

Customer.create({
  name: 'Maria Fernanda', email: 'maria.fernanda@minhaempresa.com.br',
  phone: '(21) 98987-7655', status: 'overdue', subscription_amount: 250.99,
  profile_url: 'http://desafio.nexaas.com/profiles/MariaFernanda.png'
})

Customer.create({
  name: 'Roberto Duarte', email: 'roberto.duarte@minhaempresa.com.br',
  phone: '(21) 98987-7656', status: 'overdue', subscription_amount: 950.99,
  profile_url: 'http://desafio.nexaas.com/profiles/RobertoDuarte.png'
})
