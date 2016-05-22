Rails.application.routes.draw do
  resources :applications
  devise_for :users
  resources :users
  get 'static_pages/scholars'

  get 'static_pages/instructions'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/landing_page'

  root 'static_pages#landing_page'

end
