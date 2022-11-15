class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.string :surname
      t.string :othernames
      t.date :dob
      t.string :specialization
      t.string :phone
      t.string :email
      t.string :gender
      t.text :details
      t.text :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
