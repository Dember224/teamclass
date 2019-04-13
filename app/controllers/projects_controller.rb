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

    @material = Material.new(material_params)
  end

  def index
    @this_project = Project.find(session[:project_id])
    @my_team_name = @this_project.team.team_name
    @the_squad = TeamMember.where("team_id = ?", @this_project.team_id).pluck(:user_id)
    #create an array of arrays with first_name as 0, last name as 1, user id as 2
    @current_team = User.where({id: @the_squad}).pluck(:first_name, :last_name, :id)
    @material = Material.new
  end

  private

  def project_params
    params.require(:project).permit(:team_id, :project_name, :deadline, :project_description)
  end

  def material_params
    params.require(:material).permit(:project_id, :material_name, :material_purpose, :cost, :user_id, :has_or_is_acquiring)
  end

end
