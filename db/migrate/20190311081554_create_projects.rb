class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|

      t.timestamps
      t.belongs_to :team
      t.string :project_name
      t.datetime :deadline
      t.string :project_description
    end
  end
end
