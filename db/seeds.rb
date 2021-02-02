# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.create!(title: "Harry Potter", 
            description: "Harry Potter e a pedra filosofal", 
            url_image: "https://img.elo7.com.br/product/zoom/2657A1E/big-poster-harry-potter-e-a-pedra-filosofal-lo01-90x60-cm-presente-geek.jpg ", 
            author: "J. K. Rowling")

Book.create!(title: "O Senhor dos Anéis", 
            description: "O Senhor dos Anéis", 
            url_image: "https://images-submarino.b2w.io/produtos/01/00/item/244/3/244384_1GG.jpg", 
            author: "J. R. R. Tolkien")

Book.create!(title: "Game Of Thrones", 
            description: "Fire Cannot Kill a Dragon: Game of Thrones and the Official Untold Story of the Epic Series ", 
            url_image: "https://images-na.ssl-images-amazon.com/images/I/51rgo+QRv5L._SX331_BO1,204,203,200_.jpg ", 
            author: "George Marthin")

Book.create!(title: "The Walking Dead", 
            description: "The famous book of serie The Walking Dead", 
            url_image: "https://images-americanas.b2w.io/produtos/imagens/110601528/110601536_1SZ.jpg", 
            author: "Robert Kirkman e Jay Bonansinga")

User.create!(email: "admin@gmail.com",
            password: "123456")

User.create!(email: "admin@admin.com",
            password: "123456")