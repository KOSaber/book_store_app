class Review < ApplicationRecord
  belongs_to :book
  validates :recommend, presence: true, length: { minimum: 4, too_short: "must have at least %{count} letters" }
end
