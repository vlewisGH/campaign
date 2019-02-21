class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.text :lore
      t.string :genre, :array => true
      t.references(:user, index: true)
      t.timestamps
    end
  end
end
