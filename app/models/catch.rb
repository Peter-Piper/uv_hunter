# == Schema Information
#
# Table name: catches
#
#  id              :integer          not null, primary key
#  length          :decimal(, )
#  weight          :decimal(, )
#  catch_report_id :integer
#  created_at      :datetime
#  updated_at      :datetime
#  species_id      :integer
#

class Catch < ActiveRecord::Base
  validates_presence_of(:species_id)

  belongs_to :catch_report
  belongs_to :species
end
