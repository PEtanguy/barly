class CreateTemplateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :template_items do |t|
      t.string :name
      t.string :description
      t.string :ingredients

      t.timestamps
    end
  end
end
