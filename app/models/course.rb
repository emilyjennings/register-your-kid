class Course < ApplicationRecord
  belongs_to :parent
  belongs_to :teacher
  scope :earlychildhood, -> (age) { where(age < 5)}
  scope :youth, -> (age) { where(age > 5 && age < 12)}
  scope :teen, -> (age) { where(age > 12)}

end
