class CreateHomeworks < ActiveRecord::Migration[5.2]
  def change
    create_table :homeworks do |t|
      t.string :title
      t.text :description
      t.text :file
      t.string :image
      t.integer :group_id

      t.timestamps
    end
  end
end
