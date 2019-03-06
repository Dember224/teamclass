class User < ApplicationRecord
  has_many :team_members
  has_many :teams, through: :team_members
  has_secure_password

  before_create :downcase_stuff

  private
    def downcase_stuff
      self.email.downcase!
     end
end
