Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "home#index"

  # Documentation routes
  get "/docs/dropdown", to: "docs#dropdown"
  get "/docs/disclosure", to: "docs#disclosure"
  get "/docs/dialog", to: "docs#dialog"
  get "/docs/popover", to: "docs#popover"
  get "/docs/tabs", to: "docs#tabs"
  get "/docs/transition", to: "docs#transition"
  get "/docs/button", to: "docs#button"
  get "/docs/checkbox", to: "docs#checkbox"
  get "/docs/combobox", to: "docs#combobox"
  get "/docs/fieldset", to: "docs#fieldset"
  get "/docs/input", to: "docs#input"
  get "/docs/listbox", to: "docs#listbox"
  get "/docs/radio-group", to: "docs#radio_group"
  get "/docs/select", to: "docs#select"
  get "/docs/switch", to: "docs#switch"
  get "/docs/textarea", to: "docs#textarea"

  get "/about", to: "home#about"
  get "/implementation", to: "home#implementation"
end
