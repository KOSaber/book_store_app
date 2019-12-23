class Book < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_and_belongs_to_many :users
  # validates :name, presence: true, uniqueness: true, format: { with: /\A[a-zA-Z]+\z/,
  # message: "only allows letters" }, length: { minimum: 4,maximum: 10, too_short: "must have at least %{count} letters" }
end
