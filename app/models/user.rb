class User < ApplicationRecord
  has_many :teams
  has_many :team_members, through: :teams
  has_secure_password

  before_create :downcase_stuff

  private
    def downcase_stuff
      self.email.downcase!
     end
end
