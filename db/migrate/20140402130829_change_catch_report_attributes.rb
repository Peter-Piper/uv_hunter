class ChangeCatchReportAttributes < ActiveRecord::Migration
  def up
    remove_column :catch_reports, :gps_coords
    remove_column :catch_reports, :start_time
    remove_column :catch_reports, :stop_time

    add_column :catch_reports, :visibility, :string
  end

  def down
    add_column :catch_reports, :gps_coords, :string
    add_column :catch_reports, :start_time, :integer
    add_column :catch_reports, :stop_time, :integer

    remove_column :catch_reports, :visibility
  end
end
