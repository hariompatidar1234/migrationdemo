class AddColumnPointAndGamesPlayedToPerson < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :point, :integer
    add_column :people, :games_played, :integer
  end
end
