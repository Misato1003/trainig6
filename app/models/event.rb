class Event < ApplicationRecord
  belongs_to :user
  has_many :posts
  has_many :resovesions
  has_many :likes
  has_many :favorites

  # 画像のアップロード
  mount_uploader :eventimage, ImageUploader

  # 動画のアップロード
  mount_uploader :video, VideoUploader

  validates :eventname, presence: true
  validates :first_day, presence: true
  validates :last_day, presence: true
  validates :place, presence: true
  validates :content, presence: true
end
