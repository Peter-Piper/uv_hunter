class AddPhotoToCatchReport < ActiveRecord::Migration
  def self.up
    add_attachment :catch_reports, :photo
  end

  def self.down
    remove_attachment :catch_reports, :photo
  end
end
