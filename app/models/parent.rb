class Parent < ApplicationRecord
  has_many :courses
  has_many :teachers, through: :courses
  has_secure_password
  validates :name, :presence => true
  validates :name, :uniqueness => true
end
