class CreateCatchReports < ActiveRecord::Migration
  def change
    create_table :catch_reports do |t|
      t.text :description
      t.string :gps_coords
      t.belongs_to :user
      t.integer :start_time
      t.integer :stop_time

      t.timestamps
    end

    add_index :catch_reports, :user_id
    add_index :catch_reports, :start_time
    add_index :catch_reports, :stop_time
  end
end
