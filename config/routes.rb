Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'front#home'

  get '/about', to: 'front#about'
  get '/members', to: 'back#members'

end
