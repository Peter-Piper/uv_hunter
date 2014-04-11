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

class User < ActiveRecord::Base
  # Include default devise modules. Others available are: :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true, length: {minimum: 2}
  validates :last_name, presence: true, length: {minimum: 2}
  validates :email, {presence: true, uniqueness: {case_sensitive: false},
                     format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}}

  has_attached_file :avatar,
                    styles: {medium: '300x300>', thumb: '100x100>'},
                    path: 'avatars/:style/:id_:filename',
                    storage: :dropbox,
                    dropbox_visibility: 'private',
                    dropbox_credentials: {app_key: ENV['DROPBOX_APP_KEY'], app_secret: ENV['DROPBOX_APP_SECRET'],
                                          access_token: ENV['DROPBOX_ACCESS_TOKEN'],
                                          access_token_secret: ENV['DROPBOX_ACCESS_TOKEN_SECRET'],
                                          user_id: ENV['DROPBOX_USER_ID'], access_type: ENV['DROPBOX_ACCESS_TYPE']}

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
