class Service < ActiveRecord::Base
   belongs_to :vehicle
   has_one :oil_changes, :dependent => :destroy      
   has_one :tires, :dependent => :destroy
   has_one :brakes, :dependent => :destroy
end
