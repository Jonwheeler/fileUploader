UploaderApp::Application.routes.draw do
  root to: "uploads#new"
  resources :uploads
end
