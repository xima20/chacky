class CreateParticipants < ActiveRecord::Migration[5.2]
  def change
    create_table :participants do |t|

      t.timestamps
      t.integer :customer_id, null:false
      t.integer :ivent_id, null:false
      t.boolean :leaf_ready, null:false, default: false
      t.boolean :tool_ready, null:false, default: false
      t.boolean :entry_ready, null:false, default: false


    end
  end
end
