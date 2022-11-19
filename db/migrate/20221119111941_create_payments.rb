class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.references :appointment, foreign_key: true
      t.references :admission, foreign_key: true
      t.integer :amount
      t.string :paymentType
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
