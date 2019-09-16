# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "vodka")
Ingredient.create(name: "gin")
Ingredient.create(name: "lime")
Ingredient.create(name: "brown sugar")
Ingredient.create(name: "orange peel")
Ingredient.create(name: "tomato juice")
Ingredient.create(name: "whisky")
Ingredient.create(name: "crushed ice")
Ingredient.create(name: "basil")
Ingredient.create(name: "pineapple juice")
Ingredient.create(name: "sugar")
Ingredient.create(name: "nutmeg")
Ingredient.create(name: "absinthe")
Ingredient.create(name: "vermouth")

martini = Cocktail.new(name: 'Martini')
url = 'https://images.unsplash.com/photo-1568500236751-cf62d6ef9049?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1396&q=80'
martini.remote_photo_url = url
martini.save

mojito = Cocktail.new(name: 'Mojito')
url = 'https://images.unsplash.com/photo-1546171753-97d7676e4602?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80'
mojito.remote_photo_url = url
mojito.save

sexOnTheBeach = Cocktail.new(name: 'Sex On The Beach')
url = 'https://images.unsplash.com/photo-1486947799489-3fabdd7d32a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1575&q=80'
sexOnTheBeach.remote_photo_url = url
sexOnTheBeach.save

stregis = Cocktail.new(name: 'St Regis')
url = 'https://images.unsplash.com/photo-1536935338788-846bb9981813?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1372&q=80'
stregis.remote_photo_url = url
stregis.save

lavenderandblueberry = Cocktail.new(name: 'Lavender & Berry')
url = 'https://images.unsplash.com/photo-1527761939622-9119094630cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80'
lavenderandblueberry.remote_photo_url = url
lavenderandblueberry.save

margarita = Cocktail.new(name: 'Margarita')
url = 'https://images.unsplash.com/photo-1556855810-ac404aa91e85?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80'
margarita.remote_photo_url = url
margarita.save
