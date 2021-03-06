Rails.application.routes.draw do
  get 'raffle/index'

  resources :raffle
  resources :scholarships
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users

  get 'static_pages/instructions'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/landing_page'

  root 'static_pages#landing_page'

end
