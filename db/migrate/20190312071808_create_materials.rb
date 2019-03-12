class CreateMaterials < ActiveRecord::Migration[5.1]
  def change
    create_table :materials do |t|

      t.timestamps
      t.belongs_to :project
      t.string :material_name
      t.string :material_purpose
      t.decimal :cost
      t.belongs_to :user
      t.string :has_or_is_acquiring
    end
  end
end
