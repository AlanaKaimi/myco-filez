class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.string :filename
      t.text :alt
      t.string :category
      t.references :imageable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
