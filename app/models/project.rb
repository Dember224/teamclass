class Project < ApplicationRecord
  belongs_to :team
  has_many :assignments
  has_many :materials
end
