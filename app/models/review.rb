class Review < ApplicationRecord
  has_one_attached :portrait
  belongs_to :category

  validates :title, presence: true, length: {maximum: 20}
  validates :author, presence: true, length: {maximum: 20}
  validates :content, presence: true, length: {maximum: 10000}
  validates :category_id, presence: true
  validates :score, presence: true, numericality: {
    only_interger: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
  validates :published, presence: true
  validates :portrait, presence: true
end
