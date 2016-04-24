module ApplicationHelper

  def local_request?
    Rails.env.development?
  end

  def production_request?
    Rails.env.production?
  end

  def set_nav_current_page when_selected_array
    return 'current-page' if when_selected_array.include?(params[:controller])
    ''
  end

  def set_current_page_by_action when_selected_array
    return 'current-page' if when_selected_array.include?(params[:action])
    ''
  end

  def set_current_page_by_controller_and_action when_selected_hash
    if when_selected_hash[:controller] == params[:controller] and when_selected_hash[:action] == params[:action]
      return 'current-page'
    end
    ''
  end


end
