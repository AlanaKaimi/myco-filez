class CreateMycoFiles < ActiveRecord::Migration[6.1]
  def change
    create_table :myco_files do |t|
      t.string :name
      t.text :shape
      t.text :color
      t.boolean :gills
      t.boolean :pores
      t.text :edibility
      t.text :season
      t.text :location

      t.timestamps
    end
  end
end
