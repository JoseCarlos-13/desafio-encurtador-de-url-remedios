# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :links, except: %i[show destroy update new index create] do
    post '/short_link', on: :collection, to: 'links#short_link'
  end
end
