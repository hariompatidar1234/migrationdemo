class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :adress
      t.string :email
      t.string :bio
      t.boolean :terms_of_service
      t.string :registration_number

      t.timestamps
    end
  end
end
