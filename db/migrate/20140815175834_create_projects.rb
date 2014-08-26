class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :photo_uid
      t.string :description
      t.string :website
      t.timestamps
    end
    create_table :project_members do |t|
      t.integer :project_id
      t.integer :member_id
      t.string :role
      t.timestamps
    end

  end
end
