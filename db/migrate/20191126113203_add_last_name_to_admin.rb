class AddLastNameToAdmin < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :last_name, :string
  end
end
