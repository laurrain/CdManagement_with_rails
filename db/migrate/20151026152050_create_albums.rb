class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.string :artists
      t.string :cover
      t.string :year

      t.timestamps null: false
    end
  end
end
