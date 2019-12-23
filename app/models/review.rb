class Review < ApplicationRecord
  belongs_to :book
  # validates :name, presence: true, uniqueness: true, format: { with: /\A[a-zA-Z]+\z/,
  # message: "only allows letters" }, length: { minimum: 4,maximum: 10, too_short: "must have at least %{count} letters" }
end
