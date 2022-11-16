class CreateAdmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :admissions do |t|
      t.string :roomNumber
      t.string :roomType
      t.date :admissionDate
      t.date :dischargeDate
      t.references :appointment, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
