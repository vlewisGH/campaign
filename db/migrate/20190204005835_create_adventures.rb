class CreateAdventures < ActiveRecord::Migration[5.2]
  def change
    create_table :adventures do |t|
      t.string :name
      t.references(:character, index: true)
      t.timestamps
    end
  end
end
