module ApplicationHelper
   
  def bootstrap_class_for(flash_type)
    case flash_type
      when "notice"
        "alert-success"   # Green
      when "alert"
        "alert-danger"    # Red
      # when "alert"
      #  "alert-warning"   # Yellow
      # when "info"
      #  "alert-info"      # Blue
      else
        flash_type.to_s
    end
  end
  
end