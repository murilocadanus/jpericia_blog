class LoginController < ApplicationController
  def index
    render :action => 'login'
  end
  def login
   
  end
  def do_login
      username = params[:username]
      password = params[:password]
      
      @user = User.find(:first, :conditions => [ "username = ?", username])
      
      if @user.id.nil? || @user.username.nil?
        redirect_to :action => "login"
        flash[:notice] = 'Usuário ou senha incorretos'
      else 
          if @user.password == password
            session[:user_id] = @user.id
            redirect_to :controller => "posts", :action => "index"
          else
            redirect_to :action => "login"
            flash[:notice] = 'Usuário ou senha incorretos'
          end
      end
  end
  def do_logout
    session[:user_id] = nil
    redirect_to :action => "login"
  end
end