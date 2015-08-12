module ApplicationHelper
    # Returns the full title on a per-page basis.
  def javascript(*files)
    content_for(:head) { javascript_include_tag(*files) }
  end
  
  def full_title(page_title = '')
    base_title = "Data Feud"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
end
