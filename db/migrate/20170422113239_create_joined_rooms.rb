class CreateJoinedRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :joined_rooms do |t|
      t.references :user, foreign_key: true
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
