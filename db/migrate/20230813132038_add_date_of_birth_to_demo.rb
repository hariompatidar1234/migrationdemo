class AddDateOfBirthToDemo < ActiveRecord::Migration[7.0]
  def change
    add_column :demos, :date_of_birth, :date
  end
end
