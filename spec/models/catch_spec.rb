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

require 'spec_helper'

describe Catch do
  it { should validate_presence_of(:species_id) }
  it { should belong_to(:catch_report) }
  it { should belong_to(:species) }
end
