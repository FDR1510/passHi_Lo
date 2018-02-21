class StaticPageController < ApplicationController
  def log_in
    render 'check_cred'
  end
  def check_cred
    @user_id = params[:user_id]
    @password = params[:password]
    @cred_status = ''
    if @password.length < 6
      @cred_status = 'Password must contain 6 or more characters!'
    elsif @password.length > 15
      @cred_status = 'Password must be less then 15 characters long!'
    else
      session[:user_id] = @user_id
      redirect_to "http://localhost:3000/load_game"
    end
  end
end
