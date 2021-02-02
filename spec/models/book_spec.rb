require 'rails_helper'

describe Book do 
    it "é válido quando título e autor estão presentes" do 
    book = Book.new(title: 'Livro Teste', description: "teste",
                    url_image: "123456", author: "Ciclano") 
      
        expect(book).to be_valid 
    end 
end

describe Book do 
    it "é inválido caso título não esteja presente" do 
        book = Book.new(description: "teste",
                    url_image: "123456", author: "Ciclano") 
        expect(book).to_not be_valid 
    end 
end

describe Book do 
    it "é inválido caso autor não esteja presente" do 
        book = Book.new(title: 'Livro Teste', description: "teste",
                    url_image: "123456") 
        expect(book).to_not be_valid 
    end 
end

describe Book do 
    it "é inválido caso já exista um título igual" do 
    book = Book.create(title: 'Livro Teste', description: "teste",
                    url_image: "123456", author: "Ciclano") 
    book = Book.new(title: 'Livro Teste', description: "teste",
                    url_image: "123456", author: "Ciclano") 
        book.valid? 
        expect(book.errors[:title]).to include('has already been taken')
    end 
end