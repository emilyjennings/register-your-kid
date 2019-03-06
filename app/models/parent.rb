class Parent < ApplicationRecord
  has_many :kids
  has_many :courses, through: :kids
  #bcrypt scrambling the password 
  has_secure_password
  validates :name, :presence => true
  #validates :name, :uniqueness => true  -- Do I need this? Parents can have the same name
  validates :password, :presence => true
  accepts_nested_attributes_for :kids
end
