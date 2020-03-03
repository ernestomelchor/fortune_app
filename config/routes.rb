Rails.application.routes.draw do
  namespace :api do
    get "/fortunes" => "pages#get_fortune"
    get "/random_numbers" => "pages#get_random_number"
    get "/99_bottles_of_beer" => "pages#song_lyrics"
  end
end
