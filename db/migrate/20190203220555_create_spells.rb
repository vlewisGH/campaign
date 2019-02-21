class CreateSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :spells do |t|
      t.string :name
      t.string :target
      t.references(:damage_effect, index: true)
      t.references(:game, index:true)
      t.timestamps
    end
  end
end
