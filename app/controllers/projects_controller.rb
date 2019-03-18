class ProjectsController < ApplicationController
  def new
    @current_team = Team.find_by_id(session[:team_id]) ##fix this, it's not findng the team
    @team_name = @current_team.team_name
    @team_id = @current_team.id
    @project = Project.new

    if session[:team_id]
      @existing_projects = Project.where("team_id = ?", session[:team_id])
    end
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      session[:project_id] = @project.id
      redirect_to '/our_project'
    end
  end

  def index
    @this_project = Project.find(session[:project_id])
    @my_team_name = @this_project.team.team_name
    @the_squad = TeamMember.where("team_id = ?", @this_project.team_id)
    @squad_member = []
    @the_squad.each do |squad_member|
      @squad_member.push(squad_member[:user_id])
    end
  end

  private

  def project_params
    params.require(:project).permit(:team_id, :project_name, :deadline, :project_description)
  end

end