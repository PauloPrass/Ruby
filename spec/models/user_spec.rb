require 'rails_helper'

describe User do 
    it "é válido quando e-mail e senha estão presentes" do 
    user = User.new(email: 'bruce@ironmaiden.com',
                    password: "123456") 
      
        expect(user).to be_valid 
    end 
end

describe User do 
    it "é inválido caso e-mail não esteja presente" do 
        user = User.create(password: "123456") 
        expect(user).to_not be_valid 
    end 
end

describe User do 
    it "é inválido caso já exista um e-mail igual" do 
        user = User.create(email: 'contato@ironmaiden.com', password: "123456") 
        user = User.new(email: 'contato@ironmaiden.com', password: "123456") 
        user.valid? 
        expect(user.errors[:email]).to include('has already been taken')
    end 
end