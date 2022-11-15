class CreateKins < ActiveRecord::Migration[5.0]
  def change
    create_table :kins do |t|
      t.string :surname
      t.string :othernames
      t.string :phone
      t.string :idNo
      t.belongs_to :patient, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
