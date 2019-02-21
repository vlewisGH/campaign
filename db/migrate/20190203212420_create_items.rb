class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :type
      t.references(:material, index: true)
      t.references(:stat_effect, index: true)
      t.references(:game, index: true)
      t.timestamps
    end
  end
end
