class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :desciption
      t.integer :user_id
      t.integer :team_id

      t.timestamps
    end

    add_index :projects, :name
    add_index :projects, :user_id
    add_index :projects, :team_id
  end
end
