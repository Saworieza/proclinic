class CreateLabs < ActiveRecord::Migration[5.0]
  def change
    create_table :labs do |t|
      t.string :testName
      t.text :result
      t.references :appointment, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
