class UpdateStats < ActiveRecord::Migration[5.2]
  def change
    add_reference :stats, :game, foreign_key: true
  end
end
