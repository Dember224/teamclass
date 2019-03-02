class TeamMember < ApplicationRecord
  has_many :teams
  has_many :users, through: :teams
  belongs_to :user
end
