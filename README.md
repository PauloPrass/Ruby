
[![N|Solid](https://cldup.com/dTxpPi9lDf.thumb.png)](https://nodesource.com/products/nsolid)

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

Para começar a utilizar o systema de biblioteca online é necessário previamente ter um ambiente com ruby devidamente instalado, como também o ambiente de desenvolvimento ruby on rails instalado e o gerenciador de pacotes yarn e o git.

Após o ambiente configurado, é necessário definir uma pasta para a instalação do projeto, então com a pasta definida com o terminal aberto rodar o comando "git clone https://github.com/PauloPrass/Ruby_Library.git"

Com o projeto clonado entrar na pasta do projeto e rodar os comandos abaixo:
```sh
bundle install
yarn start
rails db:create db:migrate db:seed
```

Como opção alguns testes de models utilizando spec podem ser executados antes de rodar a aplicação.
Os mesmos se encontram no caminho abaixo:<br>
![Caminho teste](https://github.com/PauloPrass/Ruby_Library/blob/master/git_images/caminho_testes.png)

**Agora já podemos subir a aplicação rodando o comando "rails s".**

Após subir a aplicação será visto no terminal o local para acessar ela.
![Caminho app](https://github.com/PauloPrass/Ruby_Library/blob/master/git_images/caminho_app.png)

Na página inicial é possível observar a tabela com os livros disponíveis como também o input de pesquisa de livros, descrição ou autor. E um botão de login no canto superior direito para acesso como administrador. Como também ordenar os livros de forma crescente e descrescente através do Título e Autor no header de suas respectivas colunas.

![Inicial](https://github.com/PauloPrass/Ruby_Library/blob/master/git_images/inicial.png)

![Filtro](https://github.com/PauloPrass/Ruby_Library/blob/master/git_images/filtro.png)

Ao clicar no botão de login o usuário é levado para a tela de login onde poderá fazer o login como administrador:
Como padrão os dois usuários admin criados pelo arquivo seeds são:
E-mail: admin@gmail.com, Senha: 123456
e
E-mail:admin@admin.com, Senha: 123456

![Loign](https://github.com/PauloPrass/Ruby_Library/blob/master/git_images/login.png)

Após o usuário logar com sucesso na aplicação ele é levado para a tela de livros onde o mesmo pode visualizar livros, criar, atualizar e deletar os livros cadastrados no sistema. O usuário também pode efetuar o logout através do botão que aparece no canto superior direito.

![Logado](https://github.com/PauloPrass/Ruby_Library/blob/master/git_images/logado.png)

Nesta aplicação também é possível visualizar os usuários administradores cadastrados alterando a url da página conforme a imagem abaixo:

![Usuários](https://github.com/PauloPrass/Ruby_Library/blob/master/git_images/usuários.png)

Essa é a Biblioteca Online, :)
