class ProjectsController < ApplicationController
  def new
    @current_team = Team.find_by_id(session[:team_id])
    @team_name = @current_team.team_name
    @team_id = @current_team.team_id
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
  end

  private

  def project_params
    params.require(:project).permit(:team, :project_name, :deadline, :project_description)
  end

end
