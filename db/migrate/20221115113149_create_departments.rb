class CreateDepartments < ActiveRecord::Migration[5.0]
  def change
    create_table :departments do |t|
      t.string :name
      t.references :doctor, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
