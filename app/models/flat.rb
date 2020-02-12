class Flat < ApplicationRecord
  validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/,
  message: "Only letters are accepted" }
  validates :address, :description, presence: true
  validates :price_per_night, :number_of_guests,
    numericality: { only_integer: true },
    presence: true
end
