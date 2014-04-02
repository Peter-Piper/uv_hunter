class RenameFishToSpecies < ActiveRecord::Migration
  def up
    rename_table :fish, :species
  end

  def down
    rename_table :species, :fish
  end
end
