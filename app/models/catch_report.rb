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

  accepts_nested_attributes_for(:catches)

  validates_presence_of :gps_coords
end
