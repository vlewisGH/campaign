class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.string :name
      t.decimal :physical_resistance
      t.decimal :fire_resistance
      t.decimal :lightning_resistance
      t.decimal :ice_resistance
      t.decimal :water_resistance
      t.decimal :earth_resistance
      t.decimal :dark_resistance
      t.decimal :lightning_resistance
      t.decimal :magic_resistance
      t.references(:game, index: true)
      t.timestamps
    end
  end
end
