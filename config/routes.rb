Rails.application.routes.draw do
  resources :school_classes, only: [:index, :show, :new, :create, :edit, :update]
    patch 'school_classes/id', to:'school_classes#create'

  resources :students, only: [:index, :show, :new, :create, :edit, :update]
    patch 'student/id', to: 'student#create'
end
