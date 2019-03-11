class TeamsController < ApplicationController


  def new
    @team = Team.new
    if session[:user_id]
      @existing_teams = TeamMember.where("user_id = ?", current_user.id)
    end
  end

  def create
  
    @team = Team.new(team_params)
    if @team.save
      session[:team_id] = @team.id
      redirect_to '/team_members'
    end

  end

  private


  def team_params
    params.require(:team).permit(:team_name)
  end

end
