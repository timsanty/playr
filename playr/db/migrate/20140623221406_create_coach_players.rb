class CreateCoachPlayers < ActiveRecord::Migration
  def change
    create_table :coach_players do |t|
      t.string :coach_id
      t.string :player_id

      t.timestamps
    end
  end
end
