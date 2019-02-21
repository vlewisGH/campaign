class CreateDamageEffects < ActiveRecord::Migration[5.2]
  def change
    create_table :damage_effects do |t|
      t.string :name
      t.integer :base_damage
      t.string :element
      t.integer :duration
      t.references(:game, index: true)
      t.timestamps
    end
  end
end
