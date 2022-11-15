class CreateDiagnoses < ActiveRecord::Migration[5.0]
  def change
    create_table :diagnoses do |t|
      t.references :appointment, foreign_key: true
      t.string :disease

      t.timestamps
    end
  end
end
