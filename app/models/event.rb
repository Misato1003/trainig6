class Event < ApplicationRecord
  belongs_to :user

  # 画像のアップロード
  mount_uploader :eventimage, ImageUploader

  validates :eventname, presence: true
  validates :first_day, presence: true
  validates :last_day, presence: true
  validates :place, presence: true
  validates :content, presence: true
end
