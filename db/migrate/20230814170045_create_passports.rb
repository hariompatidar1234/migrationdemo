class CreatePassports < ActiveRecord::Migration[7.0]
  def change
    create_table :passports do |t|
      t.string :number
      t.date :expiration_date
      t.references :citizen, null: false, foreign_key: true

      t.timestamps
    end
  end
end
