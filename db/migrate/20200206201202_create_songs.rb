class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :artist_id, index: true, foreign_key: true
      t.integer :genre_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
