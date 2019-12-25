class Book < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_and_belongs_to_many :users

  validates :title, :auther, :publisher, :edition, presence: true, uniqueness: false, length: { minimum: 3,maximum: 35, too_short: "must have at least %{count} letters" }
  validates :price, presence: true, uniqueness: false, numericality: true
  validates :pic, presence: true, uniqueness: false
  validates :status, presence: true, uniqueness: false, format: { with: /\A[a-zA-Z]+\z/,
  message: "only allows letters" }, length: { minimum: 8,maximum: 25, too_short: "must have at least %{count} letters" }
end
