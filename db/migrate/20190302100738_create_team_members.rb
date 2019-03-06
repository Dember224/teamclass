class CreateTeamMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :team_members do |t|

      t.timestamps
      t.belongs_to :team
      t.belongs_to :user

    end
  end
end
