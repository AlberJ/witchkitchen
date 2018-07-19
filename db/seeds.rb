# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Gerando os tipos de receitas..."
Kind.create!([
  {name: "Sobremesa", description: "Depois do almoço."},
  {name: "Doce", description: "Cuidado com diabetes."},
  {name: "Salgado", description: "Olha o coração jovem! Se for velho nem coma."},
  {name: "Almoço", description: "Refeição do meio do dia."},
  {name: "Lanche", description: "Tapeia a fome."},
  {name: "Jantar", description: "Pode ser tanto algo comum como quanto especial. ;)"},
  {name: "Salada", description: "'Comida' leve"},
  {name: "Aperitivo", description: "Acompanhamento para cerveja ou cana naquele churrascão de fds."}
  ])
puts "Gerando os tipos de receitas gerados!"
