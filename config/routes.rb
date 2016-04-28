Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#home'

  # Not Logged in ROUTES
  get :about, to: 'home#about'
  get :history, to: 'home#history'
  get :faqs, to: 'home#faqs'
  get :supporters, to: 'home#supporters'
  get :'useful-links', to: 'home#useful_links'
  get :contacts, to: 'home#contacts'

  # Logged in ROUTES
  get :members, to: 'back#members'
end
