Rails.application.routes.draw do
# エラー原因: 単数形の
# 修正の意図: XXX
  resources :blogs do
    resources :comments, only: [:create, :destroy]
  end
end
