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

require 'spec_helper'

describe Catch do
  it { should validate_presence_of(:fish_id) }
  it { should belong_to(:catch_report) }
  it { should belong_to(:fish) }
end
