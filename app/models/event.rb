class Event < ApplicationRecord
  belongs_to :user
  
  #画像のアップロード
  mount_uploader :eventimage, ImageUploader
end
