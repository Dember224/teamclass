class Project < ApplicationRecord
  belongs_to :team, required: false
  has_many :assignments
  has_many :materials
end
