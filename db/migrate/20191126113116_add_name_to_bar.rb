class AddNameToBar < ActiveRecord::Migration[5.2]
  def change
    add_column :bars, :name, :string
  end
end
