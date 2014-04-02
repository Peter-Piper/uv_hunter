# == Schema Information
#
# Table name: areas
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  coordinates :text             default([]), is an Array
#  created_at  :datetime
#  updated_at  :datetime
#

class Area < ActiveRecord::Base
end
