class Service < ActiveRecord::Base
   belongs_to :vehicle
   has_many :oil_changes, :dependent => :destroy      
   has_many :tires, :dependent => :destroy
   has_many :brakes, :dependent => :destroy
end
