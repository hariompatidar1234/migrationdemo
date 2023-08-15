class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :mobile_number
      t.string :address

      t.timestamps
    end
  end
end
