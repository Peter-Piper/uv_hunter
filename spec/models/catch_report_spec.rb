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
  pending "add some examples to (or delete) #{__FILE__}"
end
