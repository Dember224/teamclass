class TeamsController < ApplicationController

  def index
    if params[:email]
      @user = User.find_by_email(params[:email])
    else
      @user = false
    end
  end

  private

  def email_params
    params.require(:user).permit(:email)
  end
end
