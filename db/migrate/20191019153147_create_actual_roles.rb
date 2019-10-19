class CreateActualRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :actual_roles do |t|
      t.date :start_date
      t.date :end_date
      t.string :organization
      t.string :role
      t.text :details
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :actual_roles, [:user_id, :created_at]
  end
end
