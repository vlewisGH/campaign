class CreateStatEffects < ActiveRecord::Migration[5.2]
  def change
    create_table :stat_effects do |t|
      t.string :name
      t.string :stat  
      t.integer :adjustment
      t.references(:game, index: true)
      t.timestamps
    end
  end
end
