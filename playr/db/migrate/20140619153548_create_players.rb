class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :height
      t.string :weight
      t.string :block_jump
      t.string :approach_jump
      t.string :gpa
      t.string :hand
      t.string :position
      t.string :grad_year

      t.timestamps
    end
  end
end
