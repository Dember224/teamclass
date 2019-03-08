class TeamMember < ApplicationRecord
  belongs_to :users, required: false
  belongs_to :team, required: false
end
