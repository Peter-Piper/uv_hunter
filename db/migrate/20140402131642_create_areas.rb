class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name
      t.text :coordinates, array: true, default: '{}'

      t.timestamps
    end
  end
end
