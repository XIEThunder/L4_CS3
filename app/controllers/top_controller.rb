class TopController < ApplicationController
  def main
    if session[:login_uid] != nil
      render "main"
    else
      render "login"
    end
  end

  def login
    hashed_password = BCrypt::Password.create('pass')
    if BCrypt::Password.new(hashed_password) == 'pass'
      session[:login_uid] = params[:uid]
      puts "logged in!"
      redirect_to top_main_path
    else
      render "error"
    end
  end
  
  def logout
    session.delete(:login_uid)
    redirect_to top_main_path
  end
end