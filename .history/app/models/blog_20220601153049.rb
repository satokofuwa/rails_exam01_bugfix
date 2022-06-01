# エラー原因: アソシエーションの複数形が設定されていなかった
# 修正の意図: co
class Blog < ApplicationRecord
  has_many :comments

  validates :title, presence: true
  validates :content, presence: true
end
