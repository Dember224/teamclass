class TeamMembersController < ApplicationController

  def new
    @team_member =TeamMember.new
  end

  def create
    @team_member = TeamMember.new(team_member_params)
  end

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

  def team_member_params
    params.require(:team_member).permit(:team, :user)
  end
end
