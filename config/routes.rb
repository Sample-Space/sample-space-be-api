Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get 'kits', to: 'kits#index'
      get 'kits/:kit_name', to: 'kits#show'
    end
  end
end
