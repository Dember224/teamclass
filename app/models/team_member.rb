class TeamMember < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :team, required: false
end
