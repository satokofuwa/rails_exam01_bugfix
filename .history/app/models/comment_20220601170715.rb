class Comment < ApplicationRecord
  belongs_to :blog

  validates :content, presence: true
  validates :content, presence: true
end
