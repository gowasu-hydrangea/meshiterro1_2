Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # アプリケーションを完成させよう2＞1章＞トップページの作成
  root to: "homes#top"
  
  # アプリケーションを完成させよう2＞7章＞
  # Aboutページの作成
  get 'homes/about', to: 'homes#about', as:'about'
end
