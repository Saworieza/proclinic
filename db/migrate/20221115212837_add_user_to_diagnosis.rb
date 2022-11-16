class AddUserToDiagnosis < ActiveRecord::Migration[5.0]
  def change
    add_column :diagnoses, :user_id, :integer
  end
end
