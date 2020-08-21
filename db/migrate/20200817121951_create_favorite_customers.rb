class CreateFavoriteCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_customers do |t|

      t.timestamps
      t.integer :customer_id, null: false
      t.integer :favorite_customer_id, null: false
    end
  end
end
