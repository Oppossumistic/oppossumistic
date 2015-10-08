class SessionsController < ApplicationController

  def create
    if User.find_by_email(params[:email])
      user = User.find_by_email(params[:session][:email])
      if user && user.authenticate(params[:session][:password])
        session[:user_id]=user.id
      else
        redirect_to dashboard_path, notice: 'Login successful'
      end
    else
      redirect_to login_path, notice: 'Login unsuccessful'
    end
  end

  def new
    redirect_to dashboard_path if logged_in?
  end

  def destroy
    session[:user_id]=nil
    redirect_to login_path, alert: 'Logged out.'
  end
end
