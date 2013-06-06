Cats99::Application.routes.draw do
  resources :cats
  resources :cat_rental_requests
  resource :user
  resource :session

  put '/cat_rental_requests/:id/approve' => "CatRentalRequests#approve"
  put '/cat_rental_requests/:id/deny' => "CatRentalRequests#deny"
end
