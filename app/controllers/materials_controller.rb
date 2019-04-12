class MaterialsController < ApplicationController

  def new
    @materials = Material.new
    @this_project = Project.find(session[:project_id])
    @team_members = TeamMember.where('team_id = ?', @this_project.team_id)
    @member_user_id = []
    @team_members.each do |member|
      @member_user_id.push(member[:user_id])
    end
  end

  def create
    @materials = Material.new(material_params)
     @materials.save
      
  end

  private

  def material_params
    params.require(:material).permit(:project_id, :material_name, :material_purpose, :cost, :user_id, :has_or_is_acquiring)
  end
end
