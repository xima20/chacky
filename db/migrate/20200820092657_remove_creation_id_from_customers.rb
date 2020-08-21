class RemoveCreationIdFromCustomers < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers, :creation_id, :string
  end
end
