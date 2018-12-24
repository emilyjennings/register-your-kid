class Parent < ApplicationRecord
  has_many :kids
  has_many :courses, through: :kids
  has_secure_password
  validates :name, :presence => true
  validates :name, :uniqueness => true
  accepts_nested_attributes_for :kids
end
