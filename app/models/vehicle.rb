class Vehicle < ActiveRecord::Base
  require 'carrierwave/orm/activerecord'
  
  belongs_to :user
end
