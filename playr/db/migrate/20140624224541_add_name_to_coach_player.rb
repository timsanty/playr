class AddNameToCoachPlayer < ActiveRecord::Migration
  def change
    add_column :coach_players, :name, :string
  end
end
