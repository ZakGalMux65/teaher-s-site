class CreateMethodicalMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :methodical_materials do |t|
      t.string :title
      t.text :description
      t.text :file
      t.string :image
      t.integer :group_id

      t.timestamps
    end
  end
end
