Rails.application.routes.draw do
  get 'static_pages/scholars'

  get 'static_pages/instructions'

  get 'static_pages/about'

  get 'static_pages/contact'

  resources :applications
  get 'static_pages/landing_page'

  root 'static_pages#landing_page'

end
