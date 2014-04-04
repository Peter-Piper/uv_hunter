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

class CatchReport < ActiveRecord::Base
  belongs_to :user
  has_many :catches, dependent: :destroy
  has_many :species, through: :catches

  has_attached_file :photo,
                    #styles: {thumb: '100x>'},
                    storage: :dropbox,
                    dropbox_credentials: {app_key: ENV['DROPBOX_APP_KEY'], app_secret: ENV['DROPBOX_APP_SECRET'],
                                          access_token: ENV['DROPBOX_ACCESS_TOKEN'],
                                          access_token_secret: ENV['DROPBOX_ACCESS_TOKEN_SECRET'],
                                          user_id: ENV['DROPBOX_USER_ID'], access_type: ENV['DROPBOX_ACCESS_TYPE']}

  # Validate content type
  validates_attachment_content_type :photo, :content_type => /\Aimage/
  # Validate filename
  validates_attachment_file_name :photo, :matches => [/png\Z/, /jpe?g\Z/]

  accepts_nested_attributes_for(:catches)
end
