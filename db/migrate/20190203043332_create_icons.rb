class CreateIcons < ActiveRecord::Migration[5.2]
  def change
    create_table :icons do |t|
      t.string :name
      t.string :type
      t.string :image
      t.string :worldspace
      t.references(:map, index: true)
      t.timestamps
    end
  end
end
