module ApplicationHelper
  def nav_class(path)
    current_page?(path) ? "active" : ""
  end
end
