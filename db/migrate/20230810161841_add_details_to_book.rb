class AddDetailsToBook < ActiveRecord::Migration[7.0]
  def change
    # add_column :books, :book_number, :string
    # add_column :books, :price, :decimal
    add_column :books, :price, :decimal, precision: 5, scale: 2
    add_reference :books, :supplier, polymorphic: true
  end
end
