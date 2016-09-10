class CreateClassRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :class_rooms do |t|
      t.integer :school_id
      t.string :name
      t.string :number

      t.timestamps
    end
    add_foreign_key :class_rooms, :schools
  end
end
