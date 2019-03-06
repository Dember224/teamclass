class TeamMember < ApplicationRecord
  belongs_to :users
  belongs_to :team
end
