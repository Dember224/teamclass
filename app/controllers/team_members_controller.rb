class TeamMembersController < ApplicationController

  def new
    @team_member =TeamMember.new
  end

  def create

    @team_member = TeamMember.new(team_member_params)
    if @team_member.save
      redirect_to '/team_members'
    end
  end

  def index
    @team_member = TeamMember.new
    @team_id = Team.find_by_id(session[:team_id]).id
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
    params.require(:team_member).permit(:team_id, :user_id)
  end
end
