class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :url
      t.string :caption
      t.integer :rating

      t.timestamps null: false
    end
  end
end
