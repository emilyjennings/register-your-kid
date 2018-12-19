class Parent < ApplicationRecord
  has_many :courses
  has_many :teachers, through: :courses
  has_secure_password
  validates :name, :presence => true, :message => "You need a name"
  valideates :name, :uniqueness => true, :message => "You need a unique name"
end
