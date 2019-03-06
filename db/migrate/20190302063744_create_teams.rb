class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|

      t.timestamps
      t.string :team_name

    end
  end
end
