class Comment < ApplicationRecord
  belongs_to :blog

  validates :content, presence: true
  validates :name, presence: true
end
