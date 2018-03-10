class SessionsController < ApplicationController

  def create
    @user = User.find_by(email: params[:user][:email])

    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      flash[:success] = "Successfully Logged In as #{@user.first_name}."

      redirect_to admin_dashboard_index_path if @user.admin?
    else
      flash[:login_error] = "Login Error: incorrect username or password."
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end
