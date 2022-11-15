class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :surname
      t.string :othernames
      t.string :age
      t.string :gender
      t.string :phone
      t.string :address
      t.string :idNo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
