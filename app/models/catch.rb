# == Schema Information
#
# Table name: catches
#
#  id              :integer          not null, primary key
#  length          :decimal(, )
#  weight          :decimal(, )
#  catch_report_id :integer
#  fish_id         :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class Catch < ActiveRecord::Base
  validates_presence_of(:fish_id)

  belongs_to :catch_report
  belongs_to :species
end
