class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|

      t.timestamps
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :user_type
    end
  end
end
