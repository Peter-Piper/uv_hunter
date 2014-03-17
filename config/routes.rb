# == Route Map (Updated 2014-03-16 13:24)
#
#                   Prefix Verb   URI Pattern                       Controller#Action
#            catch_reports GET    /catch_reports(.:format)          catch_reports#index
#                          POST   /catch_reports(.:format)          catch_reports#create
#         new_catch_report GET    /catch_reports/new(.:format)      catch_reports#new
#        edit_catch_report GET    /catch_reports/:id/edit(.:format) catch_reports#edit
#             catch_report GET    /catch_reports/:id(.:format)      catch_reports#show
#                          PATCH  /catch_reports/:id(.:format)      catch_reports#update
#                          PUT    /catch_reports/:id(.:format)      catch_reports#update
#         new_user_session GET    /users/sign_in(.:format)          devise/sessions#new
#             user_session POST   /users/sign_in(.:format)          devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)         devise/sessions#destroy
#            user_password POST   /users/password(.:format)         devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)     devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)    devise/passwords#edit
#                          PATCH  /users/password(.:format)         devise/passwords#update
#                          PUT    /users/password(.:format)         devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)           devise/registrations#cancel
#        user_registration POST   /users(.:format)                  devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)          devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)             devise/registrations#edit
#                          PATCH  /users(.:format)                  devise/registrations#update
#                          PUT    /users(.:format)                  devise/registrations#update
#                          DELETE /users(.:format)                  devise/registrations#destroy
#                     root GET    /                                 catch_reports#index
#

Uvhunter::Application.routes.draw do
  resources :catch_reports, except: [:destroy]

  devise_for :users

  root 'catch_reports#index'
end
