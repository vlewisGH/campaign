class CreateStats < ActiveRecord::Migration[5.2]
  def change
    create_table :stats do |t|
      t.integer :strength
      t.integer :perception
      t.integer :agility
      t.integer :charisma
      t.integer :dexterity
      t.integer :intelligence
      t.integer :wisdom
      t.integer :constitution
      t.timestamps
    end
  end
end
