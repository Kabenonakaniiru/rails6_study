Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }

  resources :missions do
    get 'find_mission_area'
    post 'mission_area_save'
  end
end
