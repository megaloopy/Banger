class LandersController < ApplicationController
  def home
    @photo = Unsplash::Photo.find("xXalKDWoZSo")
  end
 
 
end
