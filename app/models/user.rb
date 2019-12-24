class User < ApplicationRecord
  has_and_belongs_to_many :books
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :fname,:lname, presence: true, uniqueness: false, format: { with: /\A[a-zA-Z]+\z/,
  message: "only allows letters" } , length: { minimum: 3,maximum: 10, too_short: "must have at least %{count} letters" }

  validates :phone ,presence: true,numericality: { only_integer: true },length: { minimum: 9,maximum: 15, too_short: "must have at least %{count} numbers" }
  validates :email ,length: { minimum: 10,maximum: 35, too_short: "too short email" },format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
  message: "please write valid email" } 
 
end

