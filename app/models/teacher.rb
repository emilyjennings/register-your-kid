class Teacher < ApplicationRecord
  has_many :courses
  has_many :parents, through: :courses
end
