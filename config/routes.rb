Rails.application.routes.draw do
  root 'dashboards#index'
  match '/get_file' => 'dashboards#get_file', via: [:get, :post]
end