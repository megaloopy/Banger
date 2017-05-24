class Vehicle < ActiveRecord::Base
  require 'carrierwave/orm/activerecord'
  mount_uploader :image, ImageUploader
  belongs_to :user
end
