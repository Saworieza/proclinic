class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.references :patient, foreign_key: true
      t.references :doctor, foreign_key: true
      t.references :department, foreign_key: true
      t.date :date
      t.string :timeSlot
      t.integer :token
      t.text :problem
      t.boolean :diagnosed
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
