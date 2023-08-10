class RemoveBookNumberFromBook < ActiveRecord::Migration[7.0]
  def change
    remove_column :books, :book_number, :string
  end
end
