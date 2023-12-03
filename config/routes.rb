Rails.application.routes.draw do
  resources :notes
  resources :companies
  get 'notes/company_notes/:id', to: 'notes#company_notes'
  get 'notes/new_company_note/:company_id', to: 'notes#new_company_note', as: 'new_company_note'
  post 'notes/create_company_notes/:id', to: 'notes#create_company_note'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
