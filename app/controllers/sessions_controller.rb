class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:id]
      session[:team_id] = params[:id]
      redirect_to '/team_members'
    elsif params[:project_id]
      session[:project_id] = params[:project_id]
      redirect_to '/our_project'
    else
      @user = User.find_by_email(params[:session][:email])
      if @user && @user.authenticate(params[:session][:password])
        session[:user_id] = @user.id
        redirect_to '/teams'
      else
        redirect_to 'login'
      end
    end
  end

  def destroy
    session[:user_id] = nil
    session[:team_id] = nil
    session[:project_id]
    redirect_to '/'
  end

end
