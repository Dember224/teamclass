class Team < ApplicationRecord
  has_many :team_members
  has_many :users, through: :team_members
  has_many :projects
  accepts_nested_attributes_for :team_members
end
