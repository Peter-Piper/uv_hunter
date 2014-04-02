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

require 'spec_helper'

describe Species do
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
end
