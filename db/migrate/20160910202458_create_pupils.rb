class CreatePupils < ActiveRecord::Migration[5.0]
  def change
    create_table :pupils do |t|
      t.string :full_name
      t.string :father_name
      t.string :father_phone_number
      t.string :mother_name
      t.string :mother_phone_number
      t.integer :class_room_id

      t.timestamps
    end
    add_foreign_key :pupils ,:class_rooms
  end
end
