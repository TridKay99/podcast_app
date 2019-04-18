Rails.application.routes.draw do
  get "/podcasts", to: "podcast#index", as: "podcasts"
  get "/episodes/new", to: "episode#create", as: "new_episode"
end