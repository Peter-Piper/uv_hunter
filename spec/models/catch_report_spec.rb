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

require 'spec_helper'

describe CatchReport do
  it { should belong_to(:user) }
  it { should have_many(:catches).dependent(:destroy) }
  it { should have_many(:fish).through(:catches) }

  it { should accept_nested_attributes_for(:catches) }
end
