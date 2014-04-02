class AddAreaIdToCatchReports < ActiveRecord::Migration
  def change
    add_belongs_to :catch_reports, :area, index: true
  end
end
