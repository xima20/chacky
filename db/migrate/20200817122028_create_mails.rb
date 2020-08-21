class CreateMails < ActiveRecord::Migration[5.2]
  def change
    create_table :mails do |t|

      t.timestamps
      t.integer :customer_id, null: false
      t.text :mail, null: false
    end
  end
end
