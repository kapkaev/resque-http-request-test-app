EmResqueTest::Application.routes.draw do
  resources :tests do
    post 'ping', on: :collection
  end
  mount Resque::Server.new, :at => "/resque"

  root :to => "tests#index"
end
