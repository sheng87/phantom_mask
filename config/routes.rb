Rails.application.routes.draw do
  root 'api/v1/drugstore#index' 
  namespace :api do
    namespace :v1, defaults: {format: 'json'} do
      get '/drugstores', to: 'drugstore#index'
      get '/drugstores/:id', to: 'drugstore#edit'
      get '/masks/:id', to: 'masks#edit'
      put '/drugstores/:id', to: 'drugstore#update'
      put '/masks/:id', to: 'masks#update'
      delete 'masks/:mask_name', to: 'masks#destroy'
    end
  end
end
