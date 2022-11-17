class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.references :ward, foreign_key: true
      t.integer :number
      t.boolean :availability
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
