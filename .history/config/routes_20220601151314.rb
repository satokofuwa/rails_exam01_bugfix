Rails.application.routes.draw do
# エラー原因: 単数形のためトップ画面にいかない
# 修正の意図: null 
  resources :blogs do
    resources :comments, only: [:create, :destroy]
  end
end
