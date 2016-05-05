Rails.application.routes.draw do
  resources :applications
  get 'static_pages/landing_page'

  root 'static_pages#landing_page'

end
