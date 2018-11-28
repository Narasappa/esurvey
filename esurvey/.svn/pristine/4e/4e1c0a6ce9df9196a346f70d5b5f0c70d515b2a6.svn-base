class ApplicationController < ActionController::Base

  before_filter :current_user
  protect_from_forgery
 

before_filter { |c| Authorization.current_user = c.current_user }

 protected
  def authenticate_user
    unless session[:user_id]
  		redirect_to(:controller => 'home', :action => 'login_form')
  		return false
  	else
      # set current_user by the current user object
      @current_user = User.find session[:user_id]
      puts @current_user.roles 
  		return true
  	end
  end

  #This method for prevent user to access Signup & Login Page without logout
  def save_login_state
    if session[:user_id]
            redirect_to(:controller => 'home', :action => 'index')
      return false
    else
      return true
    end
  end

 def current_user
     @current_user=User.find(session[:user_id]) unless session[:user_id].nil?
  end
  
  def permission_denied  
     flash[:error] = "Sorry, you not allowed to access that page."  
      redirect_to(:controller => 'home', :action => 'index')
   end  




end
