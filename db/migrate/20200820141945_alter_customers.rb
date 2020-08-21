class AlterCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :nickname, :string
    add_column :customers, :introduction, :text
  end
end
