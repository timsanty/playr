class AddNameToCoaches < ActiveRecord::Migration
  def change
    add_column :coaches, :name, :string
    add_column :coaches, :school, :string
    add_column :coaches, :title, :string
  end
end
