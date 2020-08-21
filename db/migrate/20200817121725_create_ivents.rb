class CreateIvents < ActiveRecord::Migration[5.2]
  def change
    create_table :ivents do |t|

      t.timestamps

      t.integer :customer_id, null: false
      t.string :title, null: false
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.integer :limit_count, null: false
      t.string :ivent_image_id, null: false
      t.string :offering_method, null:false
      t.string :holding_status, null:false
      t.text :content, null:false
      t.boolean :require_frag, null:false, default: false
      t.string :tool, null:false
      t.string :leaf, null:false
      t.string :room_url, null:false




    end
  end
end
