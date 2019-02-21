class UpdateAdventures < ActiveRecord::Migration[5.2]
  def change
    add_reference :adventures, :game, foreign_key: true
  end
end
