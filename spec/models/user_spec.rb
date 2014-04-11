# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  first_name             :string(255)
#  last_name              :string(255)
#  email                  :string(255)
#  encrypted_password     :string(255)      default("")
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  avatar_file_name       :string(255)
#  avatar_content_type    :string(255)
#  avatar_file_size       :integer
#  avatar_updated_at      :datetime
#

require 'spec_helper'

describe User do
  it { should validate_presence_of(:first_name) }
  it { should_not allow_value('', nil).for(:first_name) }
  it { should ensure_length_of(:first_name).is_at_least(2) }

  it { should validate_presence_of(:last_name) }
  it { should_not allow_value('', nil).for(:last_name) }
  it { should ensure_length_of(:last_name).is_at_least(2) }

  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }
  it { should allow_value('foo@bar.bas', 'foo_bar@b.as', 'f.o.o@bar.bas').for(:email) }
  it { should_not allow_value('', nil).for(:email) }
  it { should_not allow_value('fo\ o@bar.bas', 'FOO.bar@bas', 'foo_bar.b.as', 'f.o.o@bar,bas').for(:email) }
end
