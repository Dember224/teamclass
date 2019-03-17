class AssignmentsController < ApplicationController

  def new
    @assignment = Assignment.new
    @this_project = Project.find(session[:project_id])
    @team_members = TeamMember.where('team_id = ?', @this_project.team_id)
    @member_user_id = []
    @team_members.each do |member|
      @member_user_id.push(member[:user_id])
    end
  end

  def create
    @assignment = Assignment.new(assignment_params)
    if @assignment.save
      redirect_to '/our_project'
    end
  end

  private

  def assignment_params
    params.require(:assignment).permit(:project_id, :user_id, :assignment_deadline, :assignment_description)
  end
end
