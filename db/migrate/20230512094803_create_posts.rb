class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.integer :authorid
      t.string :title
      t.text :text
      t.integer :comments_counter, default: 0
      t.integer :likes_counter, default: 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :posts, :authorid
  end
end
