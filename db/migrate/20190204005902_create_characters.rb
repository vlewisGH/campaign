class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :gender
      t.integer :exp
      t.bigint :right_hand_weapon
      t.bigint :left_hand_weapon
      t.bigint :head
      t.bigint :body
      t.bigint :arms
      t.bigint :hands
      t.bigint :legs
      t.bigint :feet
      t.references(:race, index: true)
      t.references(:stat, index: true)
      t.references(:weapon, index: true)
      t.references(:armor, index: true)
      t.references(:item, index: true)
      t.references(:spell, index: true)
      t.references(:skill, index: true)
      t.timestamps
    end
  end
end
