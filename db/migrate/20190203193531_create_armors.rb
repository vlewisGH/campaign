class CreateArmors < ActiveRecord::Migration[5.2]
  def change
    create_table :armors do |t|
      t.string :name
      t.references(:armor_class, index: true)
      t.references(:material, index: true)
      t.references(:stat_effect, index: true)
      t.timestamps
    end
  end
end
