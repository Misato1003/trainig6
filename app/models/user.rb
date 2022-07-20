class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :image, ImageUploader

  has_many :posts
  has_many :events
  has_many :resovesions
  has_many :likes

  # いいね機能
  def liked_by?(event_id)
    likes.where(event_id: event_id).exists?
  end
end
