class HomeController < ApplicationController

def index
end


def login_form

end


def login_attempt
    authorized_user = User.authenticate(params[:username_or_email],params[:login_password])
    if authorized_user
      session[:user_id] = authorized_user.id
      session[:role_title] = authorized_user.role_id
      flash[:notice] = "Wow Welcome again, you logged in as #{authorized_user.email}"
      redirect_to(:controller => 'political_parties',:action => 'index') if  authorized_user.role.title == "super_admin"
      redirect_to(:controller => 'interviews',:action => 'new') if  authorized_user.role.title == "surveyor"

    else
      flash[:notice] = "Invalid Username or Password"
      flash[:color]= "invalid"
      render "login_form"  
    end
 end

def logout
    session[:user_id] = nil
    session[:tenant_id] = nil
    redirect_to :action => 'login_form'
 end


 def forgot_password
      if request.post? and params[:reset_password] 
       if @user = User.find_by_username(params[:reset_password][:username]) 
        unless @user.user_email_id.blank?
          @user.reset_password_code = Digest::SHA1.hexdigest( "#{@user.user_email_id}#{Time.now.to_s.split(//).sort_by {rand}.join}" )
          @user.reset_password_code_until = 1.day.from_now
          #user.role = user.role_name
           @user.save(:validate => false)
          
          url = "#{request.protocol}#{request.host_with_port}"
          AppMailer.deliver_forgot_password(@user,url).deliver
          
        end
   end       
end
end

def reset_password
    user = User.find_by_reset_password_code(params[:id],:conditions=>"reset_password_code IS NOT NULL")
    if user
      if user.reset_password_code_until > Time.now
        redirect_to :action => 'set_new_password', :id => user.reset_password_code
      else
        flash[:notice] = "Reset time expired"
        redirect_to :action => 'index'
      end
    else
      flash[:notice]= "Invalid reset link"
      redirect_to :action => 'index'
    end
end


def set_new_password
    if request.post?
      user = User.find_by_reset_password_code(params[:id],:conditions=>"reset_password_code IS NOT NULL")
      if user
        if params[:set_new_password][:password] == params[:set_new_password][:password_confirmation]
          user.password = params[:set_new_password][:password]
          user.update_attributes(:password => user.password, :reset_password_code => nil, :reset_password_code_until => nil)
          
          #User.update(user.id, :password => params[:set_new_password][:new_password],
          # :reset_password_code => nil, :reset_password_code_until => nil)
          flash[:notice] = "Password succesfully reset. Use new password to log in."
          redirect_to :action => 'login_form'
        else
          flash[:notice] = "Password confirmation failed. Please enter password again."
          redirect_to :action => 'set_new_password', :id => user.reset_password_code
        end
      else
        flash[:notice] = "You have followed an invalid link. Please try again."
        redirect_to :action => 'index'
      end
    end

end

end
