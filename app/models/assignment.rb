class Assignment < ApplicationRecord
  belongs_to :project, required: false
  belongs_to :user, required: false
end
