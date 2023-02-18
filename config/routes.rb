Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :apartments
	resources :tenants
	resources :leases,  only: [:create, :destroy]



end


# Create, read, update and delete Apartments
# Create, read, update and delete Tenants
# Create and delete Lease