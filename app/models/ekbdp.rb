class Ekbdp < ApplicationRecord
  belongs_to :user

  validates :item, presence: true
  validates :quantity, presence: true, numericality: {greater_than_or_equal_to: 1}
  validates :comments, presence: true
end
