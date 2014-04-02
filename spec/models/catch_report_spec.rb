# == Schema Information
#
# Table name: catch_reports
#
#  id                 :integer          not null, primary key
#  description        :text
#  user_id            :integer
#  created_at         :datetime
#  updated_at         :datetime
#  photo_file_name    :string(255)
#  photo_content_type :string(255)
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#  visibility         :string(255)
#  area_id            :integer
#

require 'spec_helper'

describe CatchReport do
  it { should belong_to(:user) }
  it { should have_many(:catches).dependent(:destroy) }
  it { should have_many(:species).through(:catches) }

  it { should accept_nested_attributes_for(:catches) }
end
