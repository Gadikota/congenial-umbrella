module ApplicationHelper
  def flash_helper
    content_tag(:ul) do 
      return flash.map do |k,v|
        content_tag(:li, "#{k} = #{v}")
      end
    end
  end
end
