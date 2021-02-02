class SessionsController < ApplicationController
  def new
  end  
  
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to books_path, notice: "Logado com sucesso!"
    else
      flash.now[:alert] = "E-mail ou senha inválidos"
      render "new"
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to home_path, notice: "Deslogado com sucesso!"
  end
end
