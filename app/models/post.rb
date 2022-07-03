class Post < ApplicationRecord
  belongs_to :user
  belongs_to :event
  
  validates :nickname, presence: true
  validates :impressions, presence: true
end
