class Course < ApplicationRecord
  has_many :parent
  has_many :teacher
end
