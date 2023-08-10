class CreateJoinTableCustomerBook < ActiveRecord::Migration[7.0]
  def change
    create_join_table :customers, :books do |t|
      # t.index [:customer_id, :book_id]
      # t.index [:book_id, :customer_id]
    end
  end
end
