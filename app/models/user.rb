class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :image, ImageUploader

  has_many :likes, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :resovesions, dependent: :destroy
  has_many :favorites, dependent: :destroy

  # いいね機能
  def liked_by?(event_id)
    likes.where(event_id: event_id).exists?
  end

  # お気に入り機能
  def favorite_by?(event_id)
    favorites.where(event_id: event_id).exists?
  end
end
