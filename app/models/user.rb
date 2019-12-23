class User < ApplicationRecord
  has_and_belongs_to_many :books
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :name, presence: true, uniqueness: true, format: { with: /\A[a-zA-Z]+\z/,
  # message: "only allows letters" }, length: { minimum: 4,maximum: 10, too_short: "must have at least %{count} letters" }
end

