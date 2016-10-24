class LoginController < ApplicationController

  protect_from_forgery except: [:login]


  def authenticate

  end

  #  Shows the register form
  def register

  end

  # saved the user
  def create_user
    user = User.new
    user.name = params[:username]
    user.password = params[:password]
    user.save
    redirect_to '/'
  end

  def login

    user = User.find_by_name(params[:username]);

    if user && user.password == params[:password]
      session[:user] = user.id
      redirect_to '/dashboard'
    else
      redirect_to '/'
    end

    # if params[:username] == 'anthony' && params[:password] == 'eggs'
    #   # Log in is good!
    #   session[:user] = 'anthony'
    #   redirect_to "/dashboard"
    # else
    #   # log in is bad, go back
    #   redirect_to "/"
    # end
  end
end
