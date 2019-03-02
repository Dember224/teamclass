class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|

      t.timestamps
      t.string :team_name
      t.belongs_to :user
      t.belongs_to :team_member
    end
  end
end
