class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.text :file
      t.string :image

      t.timestamps
    end
  end
end