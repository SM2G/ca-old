module ApplicationHelper
  def flash_css_class_name(type)
    case type
    when :alert
      'warning'
    when :notice
      'success'
    end
  end
end
