Rails.application.routes.draw do

  resources :events, only: [:index] do
    get "/event_sessions", to: "events#event_sessions"
  end
end
