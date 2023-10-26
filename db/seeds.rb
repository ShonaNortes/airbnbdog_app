require 'faker'

# Création de 5 villes aléatoires
5.times do
  City.create(city_name: Faker::Address.city)
end

# Création de 10 chiens aléatoires
10.times do
  Dog.create(name: Faker::Creature::Dog.name, breed: Faker::Creature::Dog.breed, city_id: rand(1..5))
end

# Création de 5 promeneurs de chiens aléatoires
5.times do
  Dogsitter.create(name: Faker::Name.unique.name, experience: rand(1..10), city_id: rand(1..5))
end

# Création de 10 promenades aléatoires
10.times do
  Stroll.create(dog_id: rand(1..10), dogsitter_id: rand(1..5))
end