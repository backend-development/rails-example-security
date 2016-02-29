# all the helpers
module ApplicationHelper
  def link_unless_blank(text, url)
    url.blank? ? '-- kein Link --' : link_to(text, url)
  end
end
