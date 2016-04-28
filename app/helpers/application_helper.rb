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

  def set_current_item_by_controller_and_action_by_array when_selected_hash_array
    when_selected_hash_array.each do |when_selected_hash|
      if when_selected_hash[:controller] == params[:controller] and when_selected_hash[:action] == params[:action]
        return 'current-page'
      end
    end
    ''
  end

  def about_dropdown_hash_array
    [
      {controller: "home", action: 'about'},
      {controller: "home", action: 'history'},
      {controller: "home", action: 'faqs'},
      {controller: "home", action: 'useful_links'},
      {controller: "home", action: 'supporters'}
    ]
  end


end
