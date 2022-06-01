# エラー原因: アソシエーションの
# 修正の意図: XXX
class Blog < ApplicationRecord
  has_many :comments

  validates :title, presence: true
  validates :content, presence: true
end
