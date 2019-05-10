class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :answer, null: false, limit: 255
      t.text :content, null: false, limit: 1000
      t.string :hint01, null: false, limit: 255
      t.string :hint02, null: false, limit: 255
      t.string :hint03, null: false, limit: 255
      t.string :image
      t.references :user, null: false

      t.timestamps
    end
  end
end
