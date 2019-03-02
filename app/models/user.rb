class User < ApplicationRecord
  has_many :teams
  has_many :team_members, through: :teams
end
