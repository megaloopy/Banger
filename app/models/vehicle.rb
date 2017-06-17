class Vehicle < ActiveRecord::Base
  require 'carrierwave/orm/activerecord'
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :services, :dependent => :destroy
  has_many :oil_changes, through: :services
  has_many :tires, through: :services
  has_many :breaks, through: :services
end
