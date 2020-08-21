class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|

      t.timestamps
      t.integer :customer_id, null: false
      t.integer :ivent_id, null: false
      t.text :comment, null: false
    end
  end
end
