class TeamsController < ApplicationController


  def new
    @team = Team.new
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
