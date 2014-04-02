class RenameFishToSpecies < ActiveRecord::Migration
  def up
    rename_table :fish, :species

    remove_belongs_to :catches, :fish
    add_belongs_to :catches, :species, index: true
  end

  def down
    rename_table :species, :fish

    remove_belongs_to :catches, :species
    add_belongs_to :catches, :fish
  end
end
