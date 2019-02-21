class CreateRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :races do |t|
      t.string :name
      t.string :lore
      t.integer :starting_strength
      t.integer :starting_perception
      t.integer :starting_agility
      t.integer :starting_charisma
      t.integer :starting_dexterity
      t.integer :starting_intelligence
      t.integer :starting_wisdom
      t.integer :starting_constitution
      t.references(:game, index: true)
      t.timestamps
    end
  end
end
