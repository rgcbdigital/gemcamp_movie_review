class SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:username] = user.username
      flash[:notice] = "Logged in successfully."
      redirect_to root_path
    else
      flash[:alert] = "Invalid username or password."
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    session[:username] = nil
    flash[:notice] = "Logged out successfully."
    redirect_to root_path
  end
end