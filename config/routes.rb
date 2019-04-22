Rails.application.routes.draw do
  get "/podcasts", to: "podcast#index", as: "podcasts"
  get "/podcasts/new", to: "podcast#new", as: "new_podcast"
  get "/episodes/new", to: "episode#new", as: "new_episode"

end