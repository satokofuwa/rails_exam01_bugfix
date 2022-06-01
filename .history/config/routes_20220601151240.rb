Rails.application.routes.draw do
# エラー原因: 
# 修正の意図: XXX
  resources :blogs do
    resources :comments, only: [:create, :destroy]
  end
end
