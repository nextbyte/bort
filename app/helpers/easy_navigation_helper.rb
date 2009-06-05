module EasyNavigationHelper
  def render_tab(id, text, url, menus_html, class_name)
    if class_name.include? 'current' then
      @secondary_navigation=content_tag(:ul, menus_html, :id => "#{id}_menus")
      content_tag(:li, "#{link_to(text, url, :class => 'tab_link')}",
      :id => id, :class => class_name)
    else
      content_tag(:li, "#{link_to(text, url, :class => 'tab_link')} #{content_tag(:ul, menus_html, :id => "#{id}_menus", :style => "display:none;")}",
      :id => id, :class => class_name)
    end
  end
end