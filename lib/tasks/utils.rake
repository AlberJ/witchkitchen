namespace :utils do
  desc "Popula banco de dados com dados de teste."
  task seed: :environment do

    require 'faker'

    puts "Inicio da rake test."
    User.create!(
      name: 'Teste',
      email: 'teste@email.com',
      password: '123456'
      )
    puts "Usuario teste gerado."

    20.times do |i|
      User.create!(
        name: Faker::Name.name,
        email: Faker::Internet.free_email,
        password: '123456'
        )
    end
    puts "10 Usuarios gerados."

    100.times do |i|
      Recipe.create!(
        user: User.all.sample,
        preparation: Faker::Food.description,
        kind: Kind.all.sample,
        name: Faker::Food.dish
        )
    end
    puts "100 Receitas geradas."

    400.times do |i|
      Ingredient.create!(
        recipe: Recipe.all.sample,
        name: ["Abacate","Abacaxi","Abóbora","Açafrão","Achacha","Agar","Água De Côco","Água De Rosas","Aipo","Alcachofra","Alcaçuz","Alcaparras","Alecrim","Alface","Alfafa","Alho","Alho-Poró","Amaranto","Ameixa","Ameixas","Amêndoas","Amendoim","Amora","Anchovas","Anis","Araruta","Arroz","Arroz Integral","Arroz Japonês","Arroz Mascavo","Atum","Aveia","Avelã","Azeite","Azeitonas","Bacalhau","Bacon","Banana","Barramundi","Batata","Bérberis","Beringela","Berinjela","Beterraba","Bicarbonato De Sódio","Brócolis","Broto De Feijão","Brotos","Cacau","Cacau Em Pó","Café","Camarão","Camomila","Canela","Caqui","Carambola","Caranguejo","Cardamomo","Carne","Carne De Porco","Cassia Casca","Castanha De Caju","Castanha Do Pará","Castanha Portuguesa","Cebola","Cebolinha","Cebolinhas","Cenoura","Cenoura Roxa","Centeio","Cevada","Chá Verde","Chagas","Cheddar","Chocolate Amargo","Chuchu","Coco","Coentro","Cogumelo","Cogumelos Porcini","Cominho","Cordeiro","Couve","Couve-Flor","Cravo","Creme De Leite ","Creme De Queijo","Damasco","Damascos","Dente-De-Leão","Edamame","Erva-Doce","Ervilha","Eschallots","Espargos","Espinafre","Farinha","Farinha De Arroz","Farinha De Batata","Farinha De Grão-De-Bico","Farinha De Rosca","Farinha De Soja","Farinha De Tapioca","Farinha De Trigo","Feijão","Feijão Branco","Feijão Carioca","Fenacho","Fermento Em Pó","Fígado","Figo","Flocos De Milho","Flores De Lavanda","Framboesa","Frango","Fruta Di Conde","Fruta Do Dragão","Fubá","Geléia","Goiaba","Goiabada","Grão-De-Bico","Groselha","Hortelã","Hummus","Jewfish","Kiwi","Kombu","Lagosta","Laranja","Leite","Leite Condensado","Leite De Arroz","Leite De Cabra","Leite De Soja","Lemongrass","Lentilha","Lentilha Vermelha","Lichia","Limão","Linguado","Linguiça","Linhaça","Lula","Maçã","Maçã","Macadâmia","Macarrão","Macarrão De Arroz","Mamão","Mandarins","Manga","Manjerona","Manteiga","Maracujá","Margarina","Massa De Lasanha","Mel","Melaço","Melão","Mexilhão","Mexilhões","Missô","Molho De Ostras","Molho De Peixe","Molho De Soja","Mostarda","Mussarela","Nectarinas","Noodles Asiáticos","Noz-Moscada","Nozes","Óleo De Amêndoa","Óleo De Cártamo","Óleo De Côco","Óleo De Gergelim","Óleo De Linhaça","Óleo De Macadâmia","Óleo De Milho","Óleo De Oliva","Orégano","Ostras","Ovo","Pão","Pão Da Montanha","Pão De Forma","Pão Integral","Papel De Arroz","Pato","Pepino","Pêra","Pêssego","Picanha","Pimenta","Pimenta Chili","Pimenta Da Jamaica","Pimenta Verde","Pimentão","Pistache","Polenta","Polvo","Queijo Cottage","Queijo De Cabra","Queijo Parmesão","Queijo Prato","Queijo Provolone","Quiabo","Quinoa","Rabanete","Raisin","Raspas De Limão","Repolho","Repolho Vermelho","Ricotta","Rins","Romã","Rúcula","Sábio","Sake","Sal Marinho","Salmão","Salsicha","Salsisha","Sardinha","Semente Ajowan","Semente De Abóbora","Semente De Alcaravia","Semente De Mostarda","Semente De Papoila","Semente De Sésamo","Sementes Chia","Sementes De Gergelim","Semolina","Soja","Soletrado","Soro De Leite","Star Anise","Stevi","Suco De Maçã","Tangerina","Tiras De Banbu","Tortilla De Milho","Truta Defumada","Tubarão","Uva","Vagem","Verdes Asiáticos","Vieiras","Vinagre","Vinagre Balsâmico","Vinagre De Arroz Integral","Vinagre De Malte","Vinagre De Vinho Tinto","Vinho","Xarope De Agave","Xarope De Arroz","Xarope De milho"].sample,
        quantity: Faker::Number.decimal(2),
        unit: ["Colher de Chá", "Colher de Sopa", "Copo Americano", "Xícara" , "Litro"].sample
        )
    end
    puts "400 Ingredientes gerados."

  end

end
