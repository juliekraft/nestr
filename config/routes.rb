Nestr::Application.routes.draw do
  
  devise_for :users

  root to: "users#index"

  get '/broker/index' => "broker#index"

  get '/renter/index' => "renter#index", as: :renter_home

  get "/apartments" => "apartments#index"

  resources :apartments

  # get "/users/renter_index" => "users#renter_index"


end

# $ rake routes
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                     root        /                              users#index
#             broker_index GET    /broker/index(.:format)        broker#index
#              renter_home GET    /renter/index(.:format)        renter#index
#               apartments GET    /apartments(.:format)          apartments#index
#                          GET    /apartments(.:format)          apartments#index
#                          POST   /apartments(.:format)          apartments#create
#            new_apartment GET    /apartments/new(.:format)      apartments#new
#           edit_apartment GET    /apartments/:id/edit(.:format) apartments#edit
#                apartment GET    /apartments/:id(.:format)      apartments#show
#                          PUT    /apartments/:id(.:format)      apartments#update
#                          DELETE /apartments/:id(.:format)      apartments#destroy







