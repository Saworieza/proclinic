class AddDischargedToAdmissions < ActiveRecord::Migration[5.0]
  def change
    add_column :admissions, :discharged, :boolean
  end
end
