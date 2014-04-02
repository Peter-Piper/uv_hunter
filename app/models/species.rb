# == Schema Information
#
# Table name: species
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  latin       :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Species < ActiveRecord::Base
  validate :name, presence_of:true, uniqueness: true
end
