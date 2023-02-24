class AdminController < ApplicationController
  def admin_login
    if request.post? 
      if params[:email] == 'admin@mail.com' && params[:password] == 'admin'
        session[:admin] = 1
        session[:user] = nil
        flash[:notice] = "Admin Logged In"
        redirect_to :controller => 'stores'
      else
        redirect_to :controller => 'home', :action => 'index'
      end
    end
  end

  def logout
    session.delete(:admin)
    redirect_to :controller => 'home', :action => 'index'
  end

end
