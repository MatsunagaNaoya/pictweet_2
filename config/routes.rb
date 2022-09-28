Rails.application.routes.draw do

  resources :tweets
  #resources で７つのアクションルートを自動作成
  #resources :tweets, only: [:index, :new]と書くと二つのみルーティング設定できる
end
