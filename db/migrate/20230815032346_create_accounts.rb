class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.belongs_to :supplier
      t.string :account_number

      t.timestamps
    end
  end
end
