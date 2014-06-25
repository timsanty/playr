class AddEmailToCoachPlayer < ActiveRecord::Migration
  def change
    add_column :coach_players, :email, :string
  end
end
