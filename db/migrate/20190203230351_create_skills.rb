class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :target
      t.integer :area_of_effect
      t.integer :range
      t.integer :number_of_attacks
      t.string :animation
      t.string :weapon_class_restrictions, :array => true
      t.integer :times_used
      t.references(:stat_effect, index:true)
      t.references(:game, index: true)
      t.timestamps
    end
    add_column :spells, :range, :integer
    add_column :stat_effects, :duration, :integer
  end
end
