class CreateInvitedCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :invited_customers do |t|

      t.timestamps

      t.integer :customer_id, null: false
      t.integer :ivent_id, null: false
      
    end
  end
end
