Rails.application.routes.draw do
  root 'main#index'
  get '/', to: 'main#index', as: 'index'
  get '/signup', to: 'main#signup', as: 'signup'
  get '/artists/:artist_id/items', to: 'items#home', as: 'artist_items' #shows all items of an artist
  get '/artists/:artist_id/items/:id', to: 'items#show', as: "artist_item"#shows the item of an artist
  get '/artists', to: 'artist#index', as: 'artists' #shows all artists
  get '/categories/:category_id/items', to: "categories#index", as: "category_items" #shows all items in a category

end
