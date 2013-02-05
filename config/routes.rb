Campus::Application.routes.draw do

  devise_for :users

  resources :users

  resources :study_plans

  resources :assignments

  resources :courses

  resources :topics

  resources :users do
    resources :study_plans
  end

  root :to => 'courses#index'

  # web interface for testing email delivery in development
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end

