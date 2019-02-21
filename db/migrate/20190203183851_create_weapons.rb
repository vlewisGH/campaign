class CreateWeapons < ActiveRecord::Migration[5.2]
  def change
    create_table :weapons do |t|
      t.string :name
      t.references(:weapon_class, index: true) 
      t.references(:material, index:true)
      t.references(:damage_effect, index: true)
      t.references(:icon, index: true)
      t.timestamps
    end
  end
end
