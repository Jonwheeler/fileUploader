UploaderApp::Application.routes.draw do
  root to: "uploads#index"
  resources :uploads
end
