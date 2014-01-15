Nestr::Application.routes.draw do
  
  devise_for :users

  root to: "users#index"

  get '/broker/index' => "broker#index"

  get '/renter/index' => "renter#index"

  get "/apartments" => "apartment#index"

  # get "/users/renter_index" => "users#renter_index"


end

# rake routes
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
#                     root        /                              home#index
#            users_sign_in GET    /users/sign_in(.:format)       devise/sessions#new
#            users_sign_up GET    /users/sign_up(.:format)       devise/registrations#new
#                    users POST   /users(.:format)               devise/registrations#create
#           users_sign_out GET    /users/sign_out(.:format)      devise/sessions#destroy








