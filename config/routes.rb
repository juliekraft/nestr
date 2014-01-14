Nestr::Application.routes.draw do
  
  devise_for :users

  root to: "home#index"

  get 'users/sign_in' => "devise/sessions#new"

  get 'users/sign_up' => "devise/registrations#new"
  post 'users' => "devise/registrations#create"

  get 'users/sign_out' => "devise/sessions#destroy"


end


# rake routes in terminal will show you all paths
