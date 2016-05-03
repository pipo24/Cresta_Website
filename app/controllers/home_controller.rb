class HomeController < ActionController::Base
  protect_from_forgery with: :exception
  layout "application"

  def home
  end

  def about
  end

  def history
  end

  def faqs
  end

  def supporters
  end

  def useful_links
  end

  def contacts
  end

end
