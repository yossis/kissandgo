class CreateDuties < ActiveRecord::Migration[5.0]
  def change
    create_table :duties do |t|
      t.integer :class_room_id
      t.date :start_date
      t.date :end_date
      t.integer :parents_in_duty
      t.integer :user_id

      t.timestamps
    end
    add_foreign_key :duties ,:class_rooms
    add_foreign_key :duties ,:users
  end
end
