class Ekbdp < ApplicationRecord
  validates :name, presence: true, length: {maximum: 30, minimun: 3}
  validates :email, presence: true, email_format: { message: "Please Enter a Valid Email" }
  validates :number, presence: true, length: {maximum: 14, minimum: 10}
  validates :guests, numericality: {greater_than_or_equal_to: 0}
end
