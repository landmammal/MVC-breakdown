Rails.application.routes.draw do

root 'posts#index' #sets the root of the routes to be w.e view you want

resources :posts # usiing resources lets rails know you are using restful routes and it emplies that you are working with CRUD
                  # and therefore grant you multiple free paths that can be view with rake routes in the command line.


end
