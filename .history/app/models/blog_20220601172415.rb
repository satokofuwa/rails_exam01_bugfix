# エラー原因: アソシエーションの複数形が設定されていなかった
# 修正の意図: comment= 解消の為
class Blog < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true
end
