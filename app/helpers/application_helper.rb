module ApplicationHelper

  def bootstrap_class_for(flash_type)
    case flash_type
      when "notice"
        "alert-success"   # Green
      when "alert"
        "alert-danger"    # Red
      # when "alert"
      #   "alert-warning"   # Yellow
      # when "info"
      #   "alert-info"      # Blue
      else
        flash_type.to_s
    end
  end

  def photo
    @photo = Unsplash::Photo.random(query:"cars")
  end
  
  def resized_photo(size)
    photo[:urls][size.to_sym]
  end
  
  def author
    @photo.user
  end
  
  def author_name
    author.name
  end
  
  def unsplash_profile
    author.links.html + "?utm_source=Banger_Social_Web_app&utm_medium=referral&utm_campaign=api-credit"
  end

end