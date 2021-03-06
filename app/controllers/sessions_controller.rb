class SessionsController < ApplicationController

  def create
    user = User.find_by_email(session_params[:email])
    if user && user.authenticate(session_params[:password])
      session[:user_id] = user.id
      redirect_to dashboard_path, flash: {success: 'Successful Login'}
    else
      redirect_to login_path, flash: {error: 'Invalid email/password combination'}
    end
  end

  def new
    redirect_to dashboard_path if logged_in?
  end

  def destroy
    session[:user_id]=nil
    redirect_to login_path, alert: 'Logged out.'
  end

  private
      # Only allow a trusted parameter "white list" through.
      def session_params
        params.require(:session).permit(:email, :password)
      end
end
