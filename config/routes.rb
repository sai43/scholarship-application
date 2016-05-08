Rails.application.routes.draw do
  get 'static_pages/about'

  get 'static_pages/contact'

  resources :applications
  get 'static_pages/landing_page'

  root 'static_pages#landing_page'

end
