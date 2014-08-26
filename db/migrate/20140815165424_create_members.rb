class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :photo_uid
      t.string :phone
      t.string :email
      t.string :address
      t.date :date_of_birth
      t.string :hometown
      
      t.string :website
      t.string :twitter
      t.string :instagram
      t.string :facebook
      t.string :flickr
      t.string :pinterest
      t.string :linkedin

      t.string :membership_status
      t.string :significant_other_name
      t.date :joined_on
      t.string :gender
      t.text :where_have_you_been
      t.text :where_will_you_go

      t.timestamps
    end
  end
end
