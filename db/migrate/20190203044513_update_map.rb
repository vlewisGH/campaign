class UpdateMap < ActiveRecord::Migration[5.2]
  def change
    add_column :maps, :name, :string
    add_column :maps, :type, :string
    add_column :maps, :scale, :integer
    add_column :maps, :image, :string
    add_reference :maps, :game, foreign_key: true
  end
end
