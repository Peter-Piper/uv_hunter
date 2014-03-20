# == Schema Information
#
# Table name: catch_reports
#
#  id          :integer          not null, primary key
#  description :text
#  gps_coords  :string(255)
#  user_id     :integer
#  start_time  :integer
#  stop_time   :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class CatchReport < ActiveRecord::Base
  belongs_to :user
  has_many :catches, dependent: :destroy
  has_many :fish, through: :catches

  has_attached_file :photo,
                    #styles: {thumb: '100x>'},
                    storage: :dropbox,
                    dropbox_credentials: Rails.root.join('config/dropbox.yml')

  # Validate content type
  validates_attachment_content_type :photo, :content_type => /\Aimage/
  # Validate filename
  validates_attachment_file_name :photo, :matches => [/png\Z/, /jpe?g\Z/]

  accepts_nested_attributes_for(:catches)
end
