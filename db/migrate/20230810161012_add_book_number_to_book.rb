class AddBookNumberToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :book_number, :string
    add_index :books, :book_number
    add_column :books, :price, :decimal  
  end
end
