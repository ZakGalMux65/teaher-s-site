class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.text :file
      t.integer :group_id

      t.timestamps
    end
  end
end
