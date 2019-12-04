class AddAbvtoMenuItems < ActiveRecord::Migration[5.2]
   def change
    add_column :menu_items, :abv, :string
  end
end
