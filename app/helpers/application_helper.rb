module ApplicationHelper
  def classes_for_flash(flash_type)
    case flash_type.to_sym
    when :error
      'bg-red-100 text-red-700 border-red-300'
    else
      'bg-blue-100 text-blue-700 border-blue-300'
    end
  end

  def active_class?(link_path)
    'btn-active' if current_page?(link_path)
  end

  def app_theme
    current_user&.settings.try(:[], 'theme') == 'light' ? 'light' : 'dark'
  end

  def full_title(page_title = '')
    base_title = 'SoloCustomerTemplate'
    page_title.empty? ? base_title : "#{page_title} | #{base_title}"
  end
end
