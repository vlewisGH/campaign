class CreateArmorClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :armor_classes do |t|
      t.string :name
      t.decimal :defense_modifier
      t.decimal :weight_modifier
      t.string :body_part, :array=> true
      t.references(:game, index:true)
      t.timestamps
    end
  end
end
