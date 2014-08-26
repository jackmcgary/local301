class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :photo_uid
      t.string :website
      t.integer :project_id
      t.integer :user_id
      t.datetime :starts_at
      t.datetime :ends_at
      t.text :description
      t.boolean :is_public
      t.timestamps
    end
  end
end
