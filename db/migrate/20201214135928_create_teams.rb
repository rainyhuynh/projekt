class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end

    add_index :teams, :name
    add_index :teams, :user_id
  end
end
