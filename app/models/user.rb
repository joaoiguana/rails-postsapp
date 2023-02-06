class User < ApplicationRecord
  has_secure_password

  attr_accessor :password, :password_confirmation

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 5 }, numericality: { only_integer: true }, confirmation: true, on: :create
  validates_confirmation_of :password
end
