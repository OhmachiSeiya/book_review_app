class Review < ApplicationRecord
  has_one_attached :portrait
  belongs_to :category
end
