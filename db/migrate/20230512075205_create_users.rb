class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.text :name
      t.string :photo, default: 'https://coffee.alexflipnote.dev/random'
      t.text :bio
      t.integer :posts_count, default: 0

      t.timestamps
    end
  end
end
