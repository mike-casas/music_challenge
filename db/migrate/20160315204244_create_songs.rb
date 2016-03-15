class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.references :album, index: true, foreign_key: true
      t.string :name
      t.integer :number
      t.string :preview_url

      t.timestamps null: false
    end
  end
end
