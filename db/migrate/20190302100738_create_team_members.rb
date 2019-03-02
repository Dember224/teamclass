class CreateTeamMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :team_members do |t|

      t.timestamps
      t.integer :instructor
      t.integer :member1
      t.integer :member2
      t.integer :member3
      t.integer :member4
      t.integer :member5
      t.integer :member6
      t.integer :member7
      t.integer :member8
    end
  end
end
