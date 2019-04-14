class CreateAchievements < ActiveRecord::Migration[5.2]
  def change
    create_table :achievements do |t|
      t.string :title
      t.text :description
      t.text :file
      t.string :image

      t.timestamps
    end
  end
end
