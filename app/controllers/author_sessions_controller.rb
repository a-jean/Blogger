class AuthorSessionsController < ApplicationController

    def new
    end

    def create
      if login(params[:email], params[:password])
      redirect_back_or_to(articles_path, notice: 'Logged in sucessfully.')
      else
      redirect_to(:login, notice: 'Login failed!')
    end
    end


    def destroy
      logout
      redirect_to(:authors, notice: 'Logged out!')
    end
  end
