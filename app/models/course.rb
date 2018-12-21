class Course < ApplicationRecord
  has_many :parent
  has_many :teacher
  scope :earlychildhood, -> (age) { where(age < 5)}
  scope :youth, -> (age) { where(age > 5 && age < 12)}
  scope :teen, -> (age) { where(age > 12)}

end
