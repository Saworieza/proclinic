class CreatePrescriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :prescriptions do |t|
      t.string :drug
      t.string :quantity
      t.string :duration
      t.belongs_to :diagnosis, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
