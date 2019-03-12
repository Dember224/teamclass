class CreateAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :assignments do |t|

      t.timestamps
      t.belongs_to :project
      t.belongs_to :user
      t.date_time :assignment_deadline
      t.string :assignment_description

    end
  end
end
